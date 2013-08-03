
[{*  ------------------------------------------
  *  Replacement of block 
  *      admin_article_pictures_custom
  *  in file 
  *      article_pictures.tpl 
  *
  * @link      https://github.com/job963/jxExtArts
  * @license   http://www.gnu.org/licenses/gpl-3.0.html GPL v3 or later
  * @copyright (C) Joachim Barthel 2012-2013
  *
  *  ------------------------------------------ *}]
    
[{assign var="oConfig" value=$oViewConf->getConfig()}]

[{ if $oConfig->getConfigParam("sJxExtArtsShowArticlePictures") }]
    <colgroup>
        <col width="1%" nowrap>
        <col width="1%" nowrap>
        <col width="1%" nowrap>
        <col width="98%">
    </colgroup>
    <tr>
        <th colspan="5" valign="top">
           [{ oxmultilang ident="ARTICLE_PICTURES_CUSTOM_PICTURES" }]
        </th>
    </tr>

    <tr>
      <td class="index" nowrap>
          [{ oxmultilang ident="GENERAL_THUMB" }] ([{ oxmultilang ident="GENERAL_MAX_FILE_UPLOAD"}] [{$sMaxFormattedFileSize}], [{ oxmultilang ident="GENERAL_MAX_PICTURE_DIMENSIONS"}])
          [{ oxinputhelp ident="HELP_ARTICLE_PICTURES_THUMB" }]
      </td>
      <td class="text">
          [{assign var="sThumbFile" value=$edit->getPictureFieldValue("oxthumb")}]
          [{if $sThumbFile == "nopic.jpg"  || $sThumbFile == "" }]
          -------
          [{else}]
          [{assign var="blThumbUplodaded" value=true}]
          <b>[{$sThumbFile}]</b>
          [{/if}]
      </td>
      <td class="edittext">
          <input class="editinput" name="myfile[TH@oxarticles__oxthumb]" type="file">
      </td>
      <td nowrap="nowrap">
          [{if $blThumbUplodaded && !$readonly }]
          <a href="Javascript:if (confirm('[{ oxmultilang ident="JXEXTARTS_PICTURES_DELETECONFIRM" }]')==true) DeletePic('TH');" class="deleteText"><span class="ico"></span><span class="float: left;>">[{ oxmultilang ident="GENERAL_DELETE" }]</span></a>
          [{/if}]
      </td>
    </tr>

    <tr>
      <td class="index" nowrap>
          [{ oxmultilang ident="ARTICLE_PICTURES_ICON" }] ([{ oxmultilang ident="GENERAL_MAX_FILE_UPLOAD"}] [{$sMaxFormattedFileSize}], [{ oxmultilang ident="GENERAL_MAX_PICTURE_DIMENSIONS"}])
          [{ oxinputhelp ident="HELP_ARTICLE_PICTURES_ICON" }]
      </td>
      <td class="text">
          [{assign var="sIconFile" value=$edit->getPictureFieldValue("oxicon")}]
          [{if "nopic_ico.jpg" == $sIconFile || "nopic.jpg" == $sIconFile || "" == $sIconFile }]
          -------
          [{else}]
          [{assign var="blIcoUplodaded" value=true}]
          <b>[{$sIconFile}]</b>
          [{/if}]
      </td>
      <td class="edittext">
          <input class="editinput" name="myfile[ICO@oxarticles__oxicon]" type="file">
      </td>
      <td nowrap="nowrap">
          [{if $blIcoUplodaded && !$readonly }]
          <a href="Javascript:if (confirm('[{ oxmultilang ident="JXEXTARTS_PICTURES_DELETECONFIRM" }]')==true) DeletePic('ICO');" class="deleteText"><span class="ico"></span><span class="float: left;>">[{ oxmultilang ident="GENERAL_DELETE" }]</span></a>
          [{/if}]
      </td>
    </tr>
[{ else }]
    [{$smarty.block.parent}]
[{ /if }]