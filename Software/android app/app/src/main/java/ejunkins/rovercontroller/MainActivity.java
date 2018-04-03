package ejunkins.rovercontroller;


import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothServerSocket;
import android.bluetooth.BluetoothSocket;
import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Vibrator;
import android.support.annotation.RequiresApi;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.ToggleButton;

import java.io.IOException;
import java.nio.IntBuffer;
import java.util.Objects;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import static java.lang.Boolean.FALSE;
import static java.lang.Boolean.TRUE;

//import com.cardiomood.android.controls.gauge.SpeedometerGauge;

public class MainActivity extends AppCompatActivity implements AdapterView.OnItemSelectedListener, ControlStick.JoystickListener, RightControlStick.JoystickListener, View.OnClickListener{
    private Context context;
    private ControlStick controlStick;
    private RightControlStick rightControlStick;
    private Vibrator myVib; // For Haptic Feedback
    StringBuffer throttle;
    StringBuffer steering;
    StringBuffer roverFace;
    StringBuffer servo;
    StringBuffer exit;
    StringBuffer connectedStatus;
    CheckBox connected;

    BluetoothSocket mmSocket;
    BluetoothServerSocket mmServerSocket;
    BluetoothDevice mmDevice = null;
    BluetoothAdapter mBluetoothAdapter;
    Button socketButton;
    Button disconnect;
    String connection_name;
    ToggleButton toggle;
    ToggleButton servoButton;
    Handler handler;
    SocketRunnable socketrunnable;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        this.getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,WindowManager.LayoutParams.FLAG_FULLSCREEN);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        context = getApplicationContext();
        controlStick = new ControlStick(this);
        rightControlStick = new RightControlStick(this);
        setContentView(R.layout.activity_main);

        throttle = new StringBuffer();
        steering = new StringBuffer();
        roverFace = new StringBuffer();
        servo = new StringBuffer();
        exit = new StringBuffer();
        connectedStatus = new StringBuffer();
        handler = new Handler();

        throttle.append(0);
        steering.append(0);
        roverFace.append(0);
        connectedStatus.append("50");
        servo.append(0);
        exit.append("False");
        handler = new Handler();
        connected = (CheckBox) findViewById(R.id.checkBox);
        socketButton = (Button) findViewById(R.id.socketConnect);
        disconnect = (Button) findViewById(R.id.disconnect);
        toggle = (ToggleButton) findViewById(R.id.toggleButton);

        myVib = (Vibrator) this.getSystemService(VIBRATOR_SERVICE); //For Haptic Feedback
        socketButton.setOnClickListener(this);
        disconnect.setOnClickListener(this);
        socketrunnable = new SocketRunnable(throttle, steering, roverFace, servo, mmSocket,exit,connectedStatus);



        Spinner dropdown = (Spinner)findViewById(R.id.spinner1);
        String[] items = new String[]{"None","8Bit", "Wink", "Happy"};
        ArrayAdapter<String> adapter = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_dropdown_item, items);
        dropdown.setAdapter(adapter);
        dropdown.setOnItemSelectedListener(this);

        /*
        Spinner connection = (Spinner)findViewById(R.id.connectionSpinner);
        String[] items2 = new String[]{"raspberrypi","demoRover"};
        ArrayAdapter<String> adapter2 = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_dropdown_item, items2);
        connection.setAdapter(adapter2);
        connection.setOnItemSelectedListener(this);
        */
    }

    public void onItemSelected(AdapterView<?> parent, View view, int pos, long id) {

        Spinner spinner = (Spinner) parent;
        if(spinner.getId() == R.id.spinner1)
        {
            switch (pos) {
                case 0:
                    // Whatever you want to happen when the first item gets selected
                    roverFace.delete(0, roverFace.length());
                    roverFace.append(0);
                    break;
                case 1:
                    // Whatever you want to happen when the second item gets selected
                    roverFace.delete(0, roverFace.length());
                    roverFace.append(1);
                    break;
                case 2:
                    // Whatever you want to happen when the thrid item gets selected
                    roverFace.delete(0, roverFace.length());
                    roverFace.append(2);
                    break;
                case 3:
                    roverFace.delete(0, roverFace.length());
                    roverFace.append(3);
            }
        }

        else
        {
            /*
            switch (pos) {
                case 0:
                    connection_name = "raspberrypi";
                    break;
                case 1:
                    connection_name = "demoRover";
            }
            */
        }

    }

    public void onNothingSelected(AdapterView<?> parent) {
        // Another interface callback
    }

    @Override
    public void onJoystickMoved(float xPercent, float yPercent, int source) {
        switch (source)
        {
            case R.id.JoystickRight:
                steering.delete(0,steering.length());
                steering.append((int) (xPercent * 100));
                myVib.vibrate((int) Math.abs((100* xPercent)/3));
                break;

            case R.id.JoystickLeft:
                throttle.delete(0,throttle.length());
                if (!toggle.isChecked()){
                    yPercent = yPercent/2;
                    toggle.setBackgroundResource(R.drawable.button_bg_round_red);
                }
                else{
                    toggle.setBackgroundResource(R.drawable.button_bg_round);
                }
                throttle.append((int) (yPercent * -100));
                myVib.vibrate((int) Math.abs((100* yPercent)/3));
                break;
        }
    }

    @RequiresApi(api = Build.VERSION_CODES.KITKAT)
    @Override
    public void onClick(View v) {
        connection_name = "demoRover";
        final BluetoothAdapter mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
        Set<BluetoothDevice> pairedDevices = mBluetoothAdapter.getBondedDevices();
        if (pairedDevices.size() > 0) {
            for (BluetoothDevice device : pairedDevices) {
                if (Objects.equals(device.getName(), connection_name)) {
                    mmDevice = device;
                }
            }
        }
        BluetoothSocket tmp = null;
        String uuid = "94f39d29-7d6d-437d-973b-fba39e49d4ee";
        try {
            tmp = mmDevice.createRfcommSocketToServiceRecord(UUID.fromString(uuid));
        } catch (IOException e) {
            Log.e("connectfail", "Socket's create() method failed", e);
        }
        mmSocket = tmp;
        mBluetoothAdapter.cancelDiscovery();
        try {
            mmSocket.connect();
        } catch (IOException e) {
            e.printStackTrace();
        }

        switch (v.getId()){
            case R.id.socketConnect:
                exit.delete(0,exit.length());
                exit.append("False");
                SocketRunnable socketrunnable = new SocketRunnable(throttle, steering, roverFace, servo, mmSocket,exit,connectedStatus);
                new Thread(socketrunnable).start();

                break;
            case R.id.disconnect:
                exit.delete(0,exit.length());
                exit.append("True");
                break;
        }

    }
    @Override
    public void onPause() {
        super.onPause();
        exit.delete(0,exit.length());
        exit.append("True");
    }
    @Override
    public void onStart() {
        super.onStart();
        handler.postDelayed(new Runnable(){
            public void run(){
                Log.d("handler",connectedStatus.toString());
                if (connectedStatus.toString().equals("49")){
                    connected.setChecked(TRUE);
                    disconnect.setBackgroundResource(R.drawable.disconnectbuttonred);
                    socketButton.setBackgroundResource(R.drawable.roundedbuttongrey);
                } else if (connectedStatus.toString().equals("48")) {
                    exit.delete(0,exit.length());
                    exit.append("True");
                    connected.setChecked(FALSE);
                    socketButton.setBackgroundResource(R.drawable.roundedbutton);
                    disconnect.setBackgroundResource(R.drawable.roundedbuttongrey);
                } else {
                    connected.setChecked(FALSE);
                    socketButton.setBackgroundResource(R.drawable.roundedbutton);
                    disconnect.setBackgroundResource(R.drawable.roundedbuttongrey);
                }
                handler.postDelayed(this, 1000);
            }
        }, 1000);
    }
}
