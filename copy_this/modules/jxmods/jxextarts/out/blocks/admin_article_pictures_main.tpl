
[{*  ------------------------------------------
  *  Replacement of block 
  *      admin_article_pictures_main
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
        <col width="2%">
        <col width="1%" nowrap>
        <col width="1%">
        <col width="10%" nowrap>
        <col width="95%">
    </colgroup>
    <tr>
        <th colspan="5" valign="top">
           [{ oxmultilang ident="GENERAL_ARTICLE_PICTURES" }] ([{ oxmultilang ident="GENERAL_MAX_FILE_UPLOAD"}] [{$sMaxFormattedFileSize}], [{ oxmultilang ident="GENERAL_MAX_PICTURE_DIMENSIONS"}])
           [{ oxinputhelp ident="HELP_ARTICLE_PICTURES_PIC1" }]
        </th>
    </tr>

   [{ if $oxparentid }]
    <tr>
      <td class="index" colspan="5">
            <b>[{ oxmultilang ident="GENERAL_VARIANTE" }]</b>
            <a href="Javascript:editThis('[{ $parentarticle->oxarticles__oxid->value}]');" class="edittext"><b>"[{ $parentarticle->oxarticles__oxartnum->value }] [{ $parentarticle->oxarticles__oxtitle->value }]"</b></a>
      </td>
    </tr>
   [{/if}]

    [{section name=picRow start=1 loop=$iPicCount+1 step=1}]
    [{assign var="iIndex" value=$smarty.section.picRow.index}]

    <tr>
      <td class="index">
          #[{$iIndex}]
      </td>
      <td class="text">
          [{assign var="sPicFile" value=$edit->getPictureFieldValue("oxpic", $iIndex) }]
          [{assign var="blPicUplodaded" value=true}]

          [{if $sPicFile == "nopic.jpg" || $sPicFile == ""}]
          [{assign var="blPicUplodaded" value=false}]
          <span class="notActive">-------</span>
          [{else}]
          <b>[{$sPicFile}]</b>
          [{/if}]

      </td>
      <td class="edittext">
          <input class="editinput" name="myfile[M[{$iIndex}]@oxarticles__oxpic[{$iIndex}]]" type="file">
      </td>
      <td nowrap="nowrap">
          [{if $blPicUplodaded && !$readonly }]
          <a href="Javascript:if (confirm('[{ oxmultilang ident="JXEXTARTS_PICTURES_DELETECONFIRM" }]')==true) DeletePic('[{$iIndex}];');" class="deleteText"><span class="ico"></span><span class="float: left;>">[{ oxmultilang ident="GENERAL_DELETE" }]</span></a>
          [{/if}]
      </td>
      <td>

          [{if $blPicUplodaded && !$readonly }]
               [{assign var="sPicUrl" value=$edit->getPictureUrl($iIndex)}]
               <a href="[{$sPicUrl}]" class="zoomText" target="_blank"><span class="ico"></span><span class="float: left;>">[{ oxmultilang ident="JXEXTARTS_PICTURES_OPENPREVIEW" }]</span></a>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <a class="thumbnail" href="#thumb">
                   [{ oxmultilang ident="ARTICLE_PICTURES_PREVIEW" }]<span><img src="[{$sPicUrl}]" /></span>
               </a>
          [{/if}]
      </td>
    </tr>

    [{/section}]
[{ else }]
    [{$smarty.block.parent}]
[{ /if }]