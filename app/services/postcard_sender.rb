class PostcardSender
   def initialize()
   end

   def send (prm)
      MY_LOB.postcards.create(
         description: "postcard",
         to: {
         name: prm[:r_name],
          address_line1: prm[:r_address_line1],
          address_line2: prm[:r_address_line2],
          address_city: prm[:r_city],
          address_state: prm[:r_state],
          address_zip: prm[:r_zip]
        },
        from: {
         name: prm[:s_name],
          address_line1: prm[:s_address_line1],
          address_line2: prm[:s_address_line2],
          address_city: prm[:s_city],
          address_state: prm[:s_state],
          address_zip: prm[:s_zip]
        },
        front: front_html(prm[:front]),
        back: back_html,
        merge_variables: {name: prm[:name]
         }
   )
   end

   def front_html(image_url)
      "<html>
      <head>
      <meta charset='UTF-8'>
      <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
      <title>Lob.com Sample 4x6 Postcard Front</title>
      <style>
        *, *:before, *:after {
          -webkit-box-sizing: border-box;
          -moz-box-sizing: border-box;
          box-sizing: border-box;
        }
        body {
          width: 6.25in;
          height: 4.25in;
          margin: 0;
          padding: 0;
          /* If using an image, the background image should have dimensions of 1875x1275 pixels. */
          background-image: url(#{image_url});
          background-size: 6.25in 4.25in;
          background-repeat: no-repeat;
        }
        #safe-area {
          position: absolute;
          width: 5.875in;
          height: 3.875in;
          left: 0.1875in;
          top: 0.1875in;
          background-color: rgba(255,255,255,0.5);
        }
        .text {
          margin: 10px;
          font-family: 'Open Sans';
          font-weight: 400;
          font-size: 40px;
          color: white;
          text-shadow: 2px 2px black;
        }
      </style>
      </head>

      </html>"
   end

   def back_html
    "<html style='padding: 1in; font-size: 20;'></html>"
   end
end