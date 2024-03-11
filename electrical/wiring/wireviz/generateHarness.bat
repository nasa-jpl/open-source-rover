wireviz front_servo.yml --prepend-file templates.yml
wireviz back_servo.yml --prepend-file templates.yml
wireviz front_encoder.yml --prepend-file templates.yml
wireviz middle_encoder.yml --prepend-file templates.yml
wireviz back_encoder.yml --prepend-file templates.yml
wireviz encoder_extension.yml --prepend-file templates.yml
del *.svg, *.tsv, *.gv, *.html, *.png
move *.jpg ../images