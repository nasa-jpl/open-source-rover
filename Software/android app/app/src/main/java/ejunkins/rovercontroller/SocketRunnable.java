package ejunkins.rovercontroller;

import android.bluetooth.BluetoothSocket;
import android.icu.util.Output;
import android.os.SystemClock;
import android.renderscript.ScriptGroup;
import android.util.Log;
import android.widget.TextView;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.Socket;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.nio.IntBuffer;
import java.util.Arrays;
import java.util.Objects;

public class SocketRunnable implements Runnable {

    private StringBuffer exit;
    private StringBuffer throttle;
    private StringBuffer steering;
    private StringBuffer roverFace;
    private StringBuffer servo;
    private StringBuffer connectedStatus;
    private BluetoothSocket socket;

    protected SocketRunnable(StringBuffer throttle, StringBuffer steering, StringBuffer roverFace, StringBuffer servo, BluetoothSocket socket, StringBuffer exit,StringBuffer connectedStatus){
        this.throttle = throttle;
        this.steering = steering;
        this.roverFace = roverFace;
        this.socket = socket;
        this.servo = servo;
        this.exit = exit;
        this.connectedStatus = connectedStatus;
    }

    private InputStream tmpIn = null;
    private OutputStream tmpOut = null;


    @Override
    public void run(){
        long lastTimeSent = System.currentTimeMillis();
        long lastTimeReceived = System.currentTimeMillis();
        long now;
        while (exit.toString().equals("False")){
            now = System.currentTimeMillis();
            if (now > lastTimeSent + 50){
                lastTimeSent = now;
                try {
                    tmpIn = socket.getInputStream();
                }catch (IOException e){
                    Log.e("MY_APP_DEBUG_TAG","Error occured when created input stream",e);
                }
                try {
                    tmpOut = socket.getOutputStream();
                } catch (IOException e){
                    Log.e("MY_APP_DEBUG_TAG","Error occured when creating output stream",e);
                }
                InputStream mmInStream = tmpIn;
                OutputStream mmOutStream = tmpOut;
                try {
                    int a = Integer.parseInt(throttle.toString())+100;
                    int c = Integer.parseInt(steering.toString())+100;
                    int e = Integer.parseInt(roverFace.toString());
                    ByteBuffer b = ByteBuffer.allocate(4);
                    ByteBuffer d = ByteBuffer.allocate(4);
                    ByteBuffer f = ByteBuffer.allocate(4);
                    byte[] array_1 = b.putInt(a).array();
                    byte[] array_2 = d.putInt(c).array();
                    byte[] array_3 = f.putInt(e).array();
                    byte[] chk_sum = new byte[4];

                    for(int i = 0; i<array_1.length; i++){
                        chk_sum[i] = (byte)(array_1[i] ^ array_2[i] );
                    }
                    ByteBuffer x = ByteBuffer.allocate(16).putInt(a).putInt(c).putInt(e).put(chk_sum);
                    byte[] result = x.array();
                    mmOutStream.write(result);

                    int counter = 0;
                    while (counter < 200 && mmInStream.available() == 0){
                        SystemClock.sleep(5);
                        counter += 1;
                    }
                    if (counter >= 100){
                        exit.delete(0,exit.length());
                        exit.append("True");
                        Log.d("MY_EXITING_THREAD",exit.toString());
                        break;
                    }
                    String input = String.valueOf(mmInStream.read());
                    connectedStatus.delete(0, connectedStatus.length());
                    connectedStatus.append(input);
                } catch (IOException e) {
                    Log.d("ioExcpetion",e.toString());
                    e.printStackTrace();
                }
            }
        }
        try {
            socket.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        connectedStatus.delete(0,connectedStatus.length());
        connectedStatus.append("50");
    }
}


