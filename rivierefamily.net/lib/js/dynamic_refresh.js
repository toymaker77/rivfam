/**
///////////////////////////////////////////////////////////////////////////////////////////////
//DYNAMIC REFRESH MODULE BY MICHAEL STURM - WINGS ON AIR VIRTUAL AVIATION - WINGSONAIR.NET//
//COPYWRITE MAINTAINED AT WINGSONAIR.NET///////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////
 * @author Michael Sturm
 * @copyright Copyright (c) 2014, Michael Sturm
 * @link http://wingsonair.net
 * @license retained at http://wingsonair.net
 */

//TITLE THIS SECTION WHATEVER YOU WANT - but must include 'first' your reloading gif called #loading'/////////////////////////////////////////////////////////

(function($)
{
    $(document).ready(function()
    {
        $.ajaxSetup(
        {
            cache: true,
            beforeSend: function() {
                $('#Item1').show();
                $('#loading').show();
            },
            complete: function() {
                $('#loading').show();
                $('#Item1').show();
            },
            success: function() {
                $('#loading').show();
                $('#Item1').show();
            }
        });
        var $container = $("#Item1");
        $container.load (url + "/action.php/dynamic_refresh/Item1");
        var refreshId = setInterval(function()
        {
            $container.load (url + "/action.php/dynamic_refresh/Item1");
        }, 5000);
    });
})(jQuery);

(function($)
{
    $(document).ready(function()
    {
        $.ajaxSetup(
        {
            cache: false,
            beforeSend: function() {
                $('#Item2').show();                
            },
            complete: function() {                
                $('#Item2').show();
            },
            success: function() {               
                $('#Item2').show();
            }
        });
        var $container = $("#Item2");
        $container.load (url + "/action.php/dynamic_refresh/Item2");
        var refreshId = setInterval(function()
        {
            $container.load (url + "/action.php/dynamic_refresh/Item2");
        }, 5000);
    });
})(jQuery);

(function($)
{
    $(document).ready(function()
    {
        $.ajaxSetup(
        {
            cache: false,
            beforeSend: function() {
                $('#dynamicrefresh_data').show();                
            },
            complete: function() {                
                $('#dynamicrefresh_data').show();
            },
            success: function() {               
                $('#dynamicrefresh_data').show();
            }
        });
        var $container = $("#dynamicrefresh_data");
        $container.load (url + "/action.php/dynamic_refresh/dynamicrefresh_data");
        var refreshId = setInterval(function()
        {
            $container.load (url + "/action.php/dynamic_refresh/dynamicrefresh_data");
        }, 5000);
    });
})(jQuery);

//MESSAGE Counters/////////////////////////////////////////////////////////

(function($)
{
    $(document).ready(function()
    {
        $.ajaxSetup(
        {
            cache: false,
            beforeSend: function() {
                $('#messagecount').show();                
            },
            complete: function() {                
                $('#messagecount').show();
            },
            success: function() {               
                $('#messagecount').show();
            }
        });
        var $container = $("#messagecount");
        $container.load (url + "/action.php/dynamic_refresh/messagecount");
        var refreshId = setInterval(function()
        {
            $container.load (url + "/action.php/dynamic_refresh/messagecount");
        }, 5000);
    });
})(jQuery);

(function($)
{
    $(document).ready(function()
    {
        $.ajaxSetup(
        {
            cache: false,
            beforeSend: function() {
                $('#messagecount2').show();                
            },
            complete: function() {                
                $('#messagecount2').show();
            },
            success: function() {               
                $('#messagecount2').show();
            }
        });
        var $container = $("#messagecount2");
        $container.load (url + "/action.php/dynamic_refresh/messagecount2");
        var refreshId = setInterval(function()
        {
            $container.load (url + "/action.php/dynamic_refresh/messagecount2");
        }, 5000);
    });
})(jQuery);

(function($)
{
    $(document).ready(function()
    {
        $.ajaxSetup(
        {
            cache: false,
            beforeSend: function() {
                $('#messagecount3').show();                
            },
            complete: function() {                
                $('#messagecount3').show();
            },
            success: function() {               
                $('#messagecount3').show();
            }
        });
        var $container = $("#messagecount3");
        $container.load (url + "/action.php/dynamic_refresh/messagecount3");
        var refreshId = setInterval(function()
        {
            $container.load (url + "/action.php/dynamic_refresh/messagecount3");
        }, 5000);
    });
})(jQuery);

(function($)
{
    $(document).ready(function()
    {
        $.ajaxSetup(
        {
            cache: false,
            beforeSend: function() {
                $('#messagecount4').show();                
            },
            complete: function() {                
                $('#messagecount4').show();
            },
            success: function() {               
                $('#messagecount4').show();
            }
        });
        var $container = $("#messagecount4");
        $container.load (url + "/action.php/dynamic_refresh/messagecount4");
        var refreshId = setInterval(function()
        {
            $container.load (url + "/action.php/dynamic_refresh/messagecount4");
        }, 5000);
    });
})(jQuery);

//FRONTPAGE DATA/////////////////////////////////////////////////////////

(function($)
{
    $(document).ready(function()
    {
        $.ajaxSetup(
        {
            cache: false,
            beforeSend: function() {
                $('#frontpagedata').show();                
            },
            complete: function() {                
                $('#frontpagedata').show();
            },
            success: function() {               
                $('#frontpagedata').show();
            }
        });
        var $container = $("#frontpagedata");
        $container.load (url + "/action.php/dynamic_refresh/frontpagedata");
        var refreshId = setInterval(function()
        {
            $container.load (url + "/action.php/dynamic_refresh/frontpagedata");
        }, 5000);
    });
})(jQuery);