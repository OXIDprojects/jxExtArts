[{assign var="oConfig" value=$oViewConf->getConfig()}]

[{ if $oConfig->getConfigParam("sJxExtArtEdShowArticleStock") }]
    [{ if $oxparentid }]
    <tr>
      <td class="edittext" width="160">
        <b>[{ oxmultilang ident="GENERAL_VARIANTE" }]</b>
      </td>
      <td class="edittext">
        <a href="Javascript:editThis('[{ $parentarticle->oxarticles__oxid->value}]');" class="edittext"><b>[{ $parentarticle->oxarticles__oxartnum->value }] [{ $parentarticle->oxarticles__oxtitle->value }]</b></a>
      </td>
    </tr>
    [{ /if}]
    <tr>
      <td class="edittext">
        [{ oxmultilang ident="ARTICLE_STOCK_STOCK" }]
      </td>
      <td class="edittext">
        <input type="text" class="editinput" size="20" maxlength="[{$edit->oxarticles__oxstock->fldmax_length}]" name="editval[oxarticles__oxstock]" value="[{$edit->oxarticles__oxstock->value}]" [{include file="help.tpl" helpid=article_stock}] [{ $readonly }]>
        [{ oxinputhelp ident="HELP_ARTICLE_STOCK_STOCK" }]
      </td>
    </tr>
    <tr>
      <td class="edittext">
        [{ oxmultilang ident="ARTICLE_STOCK_STOCKFLAG" }]
      </td>
      <td class="edittext">
        <select name="editval[oxarticles__oxstockflag]" class="editinput" [{ $readonly }]>
          <option value="1" [{ if $edit->oxarticles__oxstockflag->value == 1 }]SELECTED[{/if}]>[{ oxmultilang ident="GENERAL_STANDARD" }]</option>
          <option value="4" [{ if $edit->oxarticles__oxstockflag->value == 4 }]SELECTED[{/if}]>[{ oxmultilang ident="GENERAL_EXTERNALSTOCK" }]</option>
          <option value="2" [{ if $edit->oxarticles__oxstockflag->value == 2 }]SELECTED[{/if}]>[{ oxmultilang ident="GENERAL_OFFLINE" }]</option>
          <option value="3" [{ if $edit->oxarticles__oxstockflag->value == 3 }]SELECTED[{/if}]>[{ oxmultilang ident="GENERAL_NONORDER" }]</option>
        </select>
        [{ oxinputhelp ident="HELP_ARTICLE_STOCK_STOCKFLAG" }]
      </td>
    </tr>
    <tr>
      <td class="edittext">
      [{ oxmultilang ident="ARTICLE_STOCK_DELIVERY" }]
      </td>
      <td class="edittext">
        <input type="text" class="editinput" size="20" maxlength="[{$edit->oxarticles__oxdelivery->fldmax_length}]" id="editval[oxarticles__oxdelivery]"  name="editval[oxarticles__oxdelivery]" value="[{$edit->oxarticles__oxdelivery|oxformdate}]" [{include file="help.tpl" helpid=article_delivery}] [{ if $oConfig->getConfigParam("sJxExtArtEdCheckDate") }]onchange="jxCheckDate(this)"[{ /if}] [{ $readonly }]>
        [{ oxinputhelp ident="HELP_ARTICLE_STOCK_DELIVERY" }]
        [{ if $oConfig->getConfigParam("sJxExtArtEdCheckDate") }]
            <script type="text/javascript">jxCheckDate(document.getElementById('editval[oxarticles__oxdelivery]'),'onLoad');</script>
        [{ /if}]
      </td>
    </tr>

  <tr>
    <td class="edittext">
      [{ oxmultilang ident="ARTICLE_STOCK_DELTIME" }]
    </td>
    <td class="edittext">
      [{ oxmultilang ident="ARTICLE_STOCK_MINDELTIME" }]&nbsp;<input type="text" class="editinput" size="3" maxlength="[{$edit->oxarticles__oxmindeltime->fldmax_length}]" name="editval[oxarticles__oxmindeltime]" value="[{$edit->oxarticles__oxmindeltime->value}]">

      [{ oxmultilang ident="ARTICLE_STOCK_MAXDELTIME" }]&nbsp;<input type="text" class="editinput" size="3" maxlength="[{$edit->oxarticles__oxmaxdeltime->fldmax_width}]" name="editval[oxarticles__oxmaxdeltime]" value="[{$edit->oxarticles__oxmaxdeltime->value}]">

      &nbsp;<select name="editval[oxarticles__oxdeltimeunit]" class="editinput">
      <option value="DAY" [{ if $edit->oxarticles__oxdeltimeunit->value == "DAY" }]SELECTED[{/if}]>[{ oxmultilang ident="ARTICLE_STOCK_DAYS" }]</option>
      <option value="WEEK" [{ if $edit->oxarticles__oxdeltimeunit->value == "WEEK" }]SELECTED[{/if}]>[{ oxmultilang ident="ARTICLE_STOCK_WEEKS" }]</option>
      <option value="MONTH" [{ if $edit->oxarticles__oxdeltimeunit->value == "MONTH" }]SELECTED[{/if}]>[{ oxmultilang ident="ARTICLE_STOCK_MONTHS" }]</option>
      </select>
    [{ oxinputhelp ident="HELP_ARTICLE_STOCK_DELTIME" }]
    </td>
  </tr>

    <tr>
      <td class="edittext wrap">
        [{ oxmultilang ident="ARTICLE_STOCK_REMINDACTIV" }]
      </td>
      <td class="edittext">
        <input type="checkbox" class="editinput" name="editval[oxarticles__oxremindactive]" value='[{if $edit->oxarticles__oxremindactive->value }][{ $edit->oxarticles__oxremindactive->value }][{else}]1[{/if}]' [{if $edit->oxarticles__oxremindactive->value }]checked[{/if}] [{ $readonly }] onclick="jxSwitchRemindValue(this);"[{if $oxparentid }]readonly disabled[{/if}]>
        [{ oxinputhelp ident="HELP_ARTICLE_STOCK_REMINDACTIV" }]
        <input type="text" class="editinput" size="20" maxlength="[{$edit->oxarticles__oxremindamount->fldmax_length}]" id="editval[oxarticles__oxremindamount]" name="editval[oxarticles__oxremindamount]" value="[{$edit->oxarticles__oxremindamount->value}]" [{if $edit->oxarticles__oxremindactive->value != 1}]disabled[{/if}][{ $readonly }]>
        [{ oxinputhelp ident="HELP_ARTICLE_STOCK_REMINDAMAOUNT" }]
      </td>
    </tr>
    <tr>
      <td class="edittext" colspan="2"><br>
        <fieldset title="[{ oxmultilang ident="GENERAL_ARTICLE_OXSTOCKTEXT" }]" style="padding-left: 5px;">
        <legend>[{ oxmultilang ident="GENERAL_ARTICLE_OXSTOCKTEXT" }]</legend><br>
        <table>
          <tr>
            <td class="edittext">
              [{ oxmultilang ident="GENERAL_LANGUAGE" }]
            </td>
            <td class="edittext">
               <select name="editlanguage" id="test_editlanguage" class="editinput" onChange="Javascript:loadLang(this);" [{$readonly}] [{$readonly_fields}]>
               [{foreach from=$otherlang key=lang item=olang}]
               <option value="[{ $lang }]"[{ if $olang->selected}]SELECTED[{/if}]>[{ $olang->sLangDesc }]</option>
               [{/foreach}]
               </select>
               [{ oxinputhelp ident="HELP_GENERAL_LANGUAGE" }]
            </td>
          </tr>
          <tr>
            <td class="edittext">
              [{ oxmultilang ident="ARTICLE_STOCK_STOCKTEXT" }]
            </td>
            <td class="edittext">
              <input type="text" class="editinput" size="40" maxlength="[{$edit->oxarticles__oxstocktext->fldmax_length}]" name="editval[oxarticles__oxstocktext]" value="[{$edit->oxarticles__oxstocktext->value}]" [{ $readonly }]>
              [{ oxinputhelp ident="HELP_ARTICLE_STOCK_STOCKTEXT" }]
            </td>
          </tr>
          <tr>
            <td class="edittext">
              [{ oxmultilang ident="ARTICLE_STOCK_NOSTOCKTEXT" }]
            </td>
            <td class="edittext">
              <input type="text" class="editinput" size="40" maxlength="[{$edit->oxarticles__oxnostocktext->fldmax_length}]" name="editval[oxarticles__oxnostocktext]" value="[{$edit->oxarticles__oxnostocktext->value}]" [{ $readonly }]>
              [{ oxinputhelp ident="HELP_ARTICLE_STOCK_NOSTOCKTEXT" }]
            </td>
          </tr>
        </table>
        </fieldset>
      </td>
    </tr>
[{ else }]
    [{$smarty.block.parent}]
[{ /if }]
