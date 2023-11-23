
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Username Verification</title>
    <style>
        body {
            margin: 0;
            line-height: normal;
            background-color: #292929;
        }

        :root {
            /* fonts */
            --font-montserrat: montserrat;

            /* font sizes */
            --font-size-3xs: 18px;

            /* Colors */
            --color-gray: #292929;
            --color-darkslategray: #2f2f2f;
        }

        .rectangle-parent {
            top: 50%;
            left: 50%;
            transform: translateX(-50%) translateY(50%);
            position: relative;
            width: 400px;
            height: 300px;
            text-align: left;
            font-size: var(--font-size-3xs);
            color: var(--color-darkslategray);
            font-family: var(--font-montserrat);
        }

        .frame-child {
            position: absolute;
            top: 0;
            left: 0;
            border-radius: 10px;
            background-color: #c9c9c9;
            border: 0.5px solid #000;
            box-sizing: border-box;
            width: 400px;
            height: 300px;
        }

        .user-verification-header {
            position: absolute;
            top: 31px;
            left: 50%;
            transform: translateX(-50%);
            font-size: 25px;
            white-space: nowrap;
        }

        .header-2 {
            position: absolute;
            top: 64px;
            left: 50%;
            transform: translateX(-50%);
            font-size: 20px;
            white-space: nowrap;
            font-weight: 500;
        }

        .username_caption,
        .status_caption {
            position: absolute;
            top: 110px;
            left: 21px;
            color: var(--color-gray);
            white-space: nowrap;
        }

        .status_caption {
            top: 212px;
            display: inline-block;
            width: 112px;
        }

        #submitButton {
            position: absolute;
            top: 166px;
            left: 21px;
			background-color: #00d1b2;
			border: 1px solid #575757;
            font-size: 13px;
            font-weight: 500;
            letter-spacing: 3px;
			border-radius: 5px;
			padding: 10px 20px;
			cursor: pointer
        }
        #submitButton:hover {
			color: #00d1b2;
			background-color: #ffffff;
		}

        #username_input {
            position: absolute;
            top: 136px;
            left: 21px;
            color: var(--color-gray);
            padding: 2px 10px;
            border: 1px solid #575757;
            border-radius: 3px;
        }

    </style>

    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=montserrat:wght@400;500;700&display=swap"
    />
  </head>
  <body>
    <div class="rectangle-parent">
        <div class="frame-child">
            <b class="user-verification-header">USER VERIFICATION</b>
            <div class="header-2">LET’S GET STARTED!</div>

            <div class="username_caption">Please enter your username</div>
            
            <input type="text" id="username_input" name="username" required>
            <button type="button" id="submitButton">SUBMIT</button>

            <div id = "status_caption" class="status_caption">Status:</div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="verify_ajax.js"></script>
  </body>
</html>