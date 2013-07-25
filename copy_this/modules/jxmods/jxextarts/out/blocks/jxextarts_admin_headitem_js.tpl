[{$smarty.block.parent}]

<script type="text/javascript">
<!--

    function checkGTIN( formElement, dispMode ) 
    {
        if (typeof(dispMode) == "undefined")
            dispMode = "onChange";
        var gtin = formElement.value;
        var errCode;

        if ( gtin == "" ) {
            formElement.style.color = "#000000";
            formElement.title = "";
            return true;
        }
        if ( gtin.match("[^0-9]") ) {
            formElement.style.color = "#ff0000";
            formElement.title = "[{ oxmultilang ident="JXVAREDIT_ERROR_WRONGCHARS" }]";
            return false;
        }

        var calcSum = 0;
        var txt = "";
        //alert (calcSum);
        for (var i=0; i<=11; i++) {
            if (i % 2 == 0)
                {
                calcSum += parseInt(gtin.charAt(i));
                txt += i+":"+parseInt(gtin.charAt(i)) + " ";
                }
            else
                {
                calcSum += parseInt(gtin.charAt(i)) * 3;
                txt += i+":"+parseInt(gtin.charAt(i)) * 3 + " ";
                }
        }
        //alert (calcSum);
        //alert(txt+calcSum);
        calcSum %= 10;
        calcSum = (calcSum == 0) ? 0 : (10 - calcSum);

        var checkSum = parseInt( gtin.substring( gtin.length - 1 ) );
        //alert(calcSum + '/' + checkSum);

        if ( calcSum != checkSum ) {
            //alert('wrong code');
            formElement.style.color = "#ff0000";
            formElement.title = "[{ oxmultilang ident="JXVAREDIT_ERROR_WRONGCHECKSUM" }]";
            return false;
        } else {
            //alert('correct');
            //alert(dispMode);
            if (dispMode == "onChange")
                formElement.style.color = "#00bb00";
            else
                formElement.style.color = "#000000";
            formElement.title = "";
            return true;
        }
    }
    
    
    function jxSwitchFromTo( formElement )
    {
        //alert(formElement.checked);
        if (formElement.checked == 1) {
            document.getElementById('editval[oxarticles__oxactivefrom]').disabled=true;
            document.getElementById('editval[oxarticles__oxactiveto]').disabled=true;
        } else {
            document.getElementById('editval[oxarticles__oxactivefrom]').disabled=false;
            document.getElementById('editval[oxarticles__oxactiveto]').disabled=false;
        }
    }
    
    
    function jxSwitchRemindValue( formElement )
    {
        //alert(formElement.checked);
        if (formElement.checked == 0) {
            document.getElementById('editval[oxarticles__oxremindamount]').disabled=true;
        } else {
            document.getElementById('editval[oxarticles__oxremindamount]').disabled=false;
        }
    }


    function jxCheckDate( formElement )
    {
        var sDate = formElement.value;
        if ( sDate == "0000-00-00" )
            return;

        var aDate = sDate.split('-');

        var year = parseInt(aDate[0]);
        var month = parseInt(aDate[1])-1;
        var day = parseInt(aDate[2]);

        dDate = new Date(year, month, day);

        if ( (year == dDate.getFullYear()) && (month == dDate.getMonth()) && (day == dDate.getDate()) )
            formElement.style.color = "#00bb00";
        else
            formElement.style.color = "#ff0000";

        return;
    }


    function jxCheckDateTime( formElement )
    {
        var sDateTime = formElement.value;
        if ( sDateTime == "0000-00-00 00:00:00" )
            return;

        var aParts = sDateTime.split(' ');
        var aDate = aParts[0].split('-');
        var aTime = aParts[1].split(':');

        var year = parseInt(aDate[0]);
        var month = parseInt(aDate[1])-1;
        var day = parseInt(aDate[2]);
        var hour = parseInt(aTime[0]);
        var minute = parseInt(aTime[1]);
        var second = parseInt(aTime[2]);

        dDate = new Date(year, month, day);

        if ( (year == dDate.getFullYear()) && (month == dDate.getMonth()) && (day == dDate.getDate()) && (hour>=0 && hour <=23) && (minute>=0 && minute<=59) && (second>=0 && second<=59) )
            formElement.style.color = "#00bb00";
        else
            formElement.style.color = "#ff0000";

        return;
    }

-->
</script>

<style type="text/css">
    .thumbnail {
        position: relative;
        z-index: 0;
    }

    .thumbnail:hover {
        background-color: transparent;
        z-index: 50;
    }

    .thumbnail span { /*CSS for enlarged image*/
        position: absolute;
        background-color: #ffffff;
        padding: 2px;
        left: -1000px;
        border: 1px solid lightgray;
        box-shadow: 3px 3px 3px #ccc;
        visibility: hidden;
        color: black;
        text-decoration: none;
    }

    .thumbnail span img { /*CSS for enlarged image*/
        border-width: 0;
        padding: 2px;
    }

    .thumbnail:hover span { /*CSS for enlarged image on hover*/
        visibility: visible;
        top: 0;
        left: 60px; /*position where enlarged image should offset horizontally */
    }
</style>

