
[{*  ------------------------------------------
  *  Replacement of block 
  *      admin_article_variant_parent 
  *  in file 
  *      article_variant.tpl 
  *
  * @link      https://github.com/job963/jxExtArts
  * @license   http://www.gnu.org/licenses/gpl-3.0.html GPL v3 or later
  * @copyright (C) Joachim Barthel 2012-2013
  *
  *  ------------------------------------------ *}]
    
[{assign var="oConfig" value=$oViewConf->getConfig()}]

[{ if $oConfig->getConfigParam("sJxExtArtsShowArticleVariant") }]
    <td class="[{ $listclass}]">&nbsp;</td>
    <td class="[{ $listclass}]">&nbsp;</td>
    <td class="[{ $listclass}]"><input type="text" class="editinput" size="25" maxlength="[{$edit->oxarticles__oxvarselect->fldmax_length}]" name="editval[oxarticles__oxvarselect]" value="[{$edit->oxarticles__oxvarselect->value}]" [{ $readonly }]></td>
    <td class="[{ $listclass}]"><input type="text" class="editinput" size="20" maxlength="[{$edit->oxarticles__oxartnum->fldmax_length}]" name="editval[oxarticles__oxartnum]" value="[{$edit->oxarticles__oxartnum->value}]" [{ $readonly }]></td>
    [{*<td class="[{ $listclass}]"><input type="text" class="editinput" size="7" maxlength="[{$edit->oxarticles__oxprice->fldmax_length}]" name="editval[oxarticles__oxprice]" value="[{$edit->oxarticles__oxprice->value}]" [{ $readonly }]></td>*}]
    <td class="[{ $listclass}]"><input type="text" class="editinput" size="16" maxlength="[{$listitem->oxarticles__oxean->fldmax_length}]" name="editval[oxarticles__oxean]" value="" [{ $readonly }]></td>
    <td class="[{ $listclass}]"><input type="text" class="editinput" size="7" maxlength="[{$listitem->oxarticles__oxbprice->fldmax_length}]" name="editval[oxarticles__oxbprice]" value="" [{ $readonly }]></td>
    <td class="[{ $listclass}]"><input type="text" class="editinput" size="7" maxlength="[{$listitem->oxarticles__oxprice->fldmax_length}]" name="editval[oxarticles__oxprice]" value="" [{ $readonly }]></td>
    <td class="[{ $listclass}]"><input type="text" class="editinput" size="7" maxlength="[{$listitem->oxarticles__oxtprice->fldmax_length}]" name="editval[oxarticles__oxtprice]" value="" [{ $readonly }]></td>
    <td class="[{ $listclass}]">&nbsp;</td>
    <td class="[{ $listclass}]"><input type="text" class="editinput" size="7" maxlength="[{$edit->oxarticles__oxstock->fldmax_length}]" name="editval[oxarticles__oxstock]" value="[{$edit->oxarticles__oxstock->value}]" [{ $readonly }]></td>
    <td class="[{ $listclass}]">
        <select name="editval[oxarticles__oxstockflag]" class="editinput" style="width:100px;" [{ $readonly }]>
        <option value="1" [{ if $edit->oxarticles__oxstockflag->value == 1 }]SELECTED[{/if}]>[{ oxmultilang ident="GENERAL_STANDARD" }]</option>
        <option value="4" [{ if $edit->oxarticles__oxstockflag->value == 4 }]SELECTED[{/if}]>[{ oxmultilang ident="GENERAL_EXTERNALSTOCK" }]</option>
        <option value="2" [{ if $edit->oxarticles__oxstockflag->value == 2 }]SELECTED[{/if}]>[{ oxmultilang ident="GENERAL_OFFLINE" }]</option>
        <option value="3" [{ if $edit->oxarticles__oxstockflag->value == 3 }]SELECTED[{/if}]>[{ oxmultilang ident="GENERAL_NONORDER" }]</option>
        </select>
    </td>
[{ else}]
    [{$smarty.block.parent}]
[{ /if}]
