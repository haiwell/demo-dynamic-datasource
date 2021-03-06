<!DOCTYPE html>
<html>
<head>
    <title>Swagger UI</title>
    <link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css'/>
    <link href='static/css/hightlight.default.css' media='screen' rel='stylesheet' type='text/css'/>
    <link href='static/css/screen.css' media='screen' rel='stylesheet' type='text/css'/>
    <script src='static/js/swagger/jquery-1.8.0.min.js' type='text/javascript'></script>
    <script src='static/js/swagger/jquery.slideto.min.js' type='text/javascript'></script>
    <script src='static/js/swagger/jquery.wiggle.min.js' type='text/javascript'></script>
    <script src='static/js/swagger/jquery.ba-bbq.min.js' type='text/javascript'></script>
    <script src='static/js/swagger/handlebars-1.0.rc.1.js' type='text/javascript'></script>
    <script src='static/js/swagger/underscore-min.js' type='text/javascript'></script>
    <script src='static/js/swagger/backbone-min.js' type='text/javascript'></script>
    <script src='static/js/swagger/swagger.js' type='text/javascript'></script>
    <script src='static/js/swagger/swagger-ui.js' type='text/javascript'></script>
    <script src='static/js/swagger/highlight.7.3.pack.js' type='text/javascript'></script>
    <%--ceshi--%>
    <style type="text/css">
        .swagger-ui-wrap {
            max-width: 960px;
            margin-left: auto;
            margin-right: auto;
        }

        .icon-btn {
            cursor: pointer;
        }

        #message-bar {
            min-height: 30px;
            text-align: center;
            padding-top: 10px;
        }

        .message-success {
            color: #89BF04;
        }

        .message-fail {
            color: #cc0000;
        }
    </style>

    <script type="text/javascript">
        $(function () {
            window.swaggerUi = new SwaggerUi({
                discoveryUrl:"/cash/api-docs",
                apiKey:"",
                dom_id:"swagger-ui-container",
                supportHeaderParams: false,
                supportedSubmitMethods: ['get', 'post', 'put', 'delete'],
                onComplete: function(swaggerApi, swaggerUi){
                	if(console) {
                        console.log("Loaded SwaggerUI")
                        console.log(swaggerApi);
                        console.log(swaggerUi);
                    }
                  $('pre code').each(function(i, e) {hljs.highlightBlock(e)});
                },
                onFailure: function(data) {
                	if(console) {
                        console.log("Unable to Load SwaggerUI");
                        console.log(data);
                    }
                },
                docExpansion: "none"
            });

            window.swaggerUi.load();
        });

    </script>
</head>

<body>
<div id='header'>
    <div class="swagger-ui-wrap">
        <a id="logo" href="http://swagger.wordnik.com">swagger</a>

        <form id='api_selector'>
            <div class='input icon-btn'>
                <img id="show-pet-store-icon" src="static/image/swagger/pet_store_api.png" title="Show Swagger Petstore Example Apis">
            </div>
            <div class='input icon-btn'>
                <img id="show-wordnik-dev-icon" src="static/image/swagger/wordnik_api.png" title="Show Wordnik Developer Apis">
            </div>
            <div class='input'><input placeholder="http://example.com/api" id="input_baseUrl" name="baseUrl"
                                      type="text"/></div>
            <div class='input'><input placeholder="api_key" id="input_apiKey" name="apiKey" type="text"/></div>
            <div class='input'><a id="explore" href="#">Explore</a></div>
        </form>
    </div>
</div>

<div id="message-bar" class="swagger-ui-wrap">
    &nbsp;
</div>

<div id="swagger-ui-container" class="swagger-ui-wrap">

</div>

</body>

</html>
