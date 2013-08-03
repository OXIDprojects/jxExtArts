
[{*  ------------------------------------------
  *  Replacement of block 
  *      admin_article_main_editor
  *  in file 
  *      article_main.tpl 
  *
  * @link      https://github.com/job963/jxExtArts
  * @license   http://www.gnu.org/licenses/gpl-3.0.html GPL v3 or later
  * @copyright (C) Joachim Barthel 2012-2013
  *
  *  ------------------------------------------ *}]
    
[{assign var="oConfig" value=$oViewConf->getConfig()}]

[{ if $oConfig->getConfigParam("sJxExtArtEdShowArticleMain") }]
    <span style="width:15%;display:inline-block;margin-left:1px;">
        [{ oxmultilang ident="ARTICLE_MAIN_SHORTDESC" }]
    </span>
    <span style="width:85%;display:inline-block;;margin-right:2px;">
        <input type="text" class="editinput" style="width:99%;"  maxlength="[{$edit->oxarticles__oxshortdesc->fldmax_length}]" name="editval[oxarticles__oxshortdesc]" value="[{$edit->oxarticles__oxshortdesc->value}]" [{ $readonly }]>
        [{ oxinputhelp ident="HELP_ARTICLE_MAIN_SHORTDESC" }]
    </span><br>
[{ /if}]

[{$smarty.block.parent}]
