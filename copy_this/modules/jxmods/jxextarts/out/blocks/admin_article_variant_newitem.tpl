
[{*  ------------------------------------------
  *  Replacement of block 
  *      admin_article_variant_newitem 
  *  in file 
  *      article_variant.tpl 
  *
  * @link      https://github.com/job963/jxExtArts
  * @license   http://www.gnu.org/licenses/gpl-3.0.html GPL v3 or later
  * @copyright (C) Joachim Barthel 2012-2013
  *
  *  ------------------------------------------ *}]

    <td class="[{ $listclass}]" colspan="2">&nbsp;</td>
    <td class="[{ $listclass}]"><input type="text" class="editinput" size="25" maxlength="[{$listitem->oxarticles__oxvarselect->fldmax_length}]" name="editval[oxarticles__oxvarselect]" value="" [{ $readonly }]></td>
    <td class="[{ $listclass}]"><input type="text" class="editinput" size="20" maxlength="[{$listitem->oxarticles__oxartnum->fldmax_length}]" name="editval[oxarticles__oxartnum]" value="" [{ $readonly }]></td>
    <td class="[{ $listclass}]"><input type="text" class="editinput" size="16" maxlength="[{$listitem->oxarticles__oxean->fldmax_length}]" name="editval[oxarticles__oxean]" value="" onchange="checkGTIN(this);" [{ $readonly }]></td>
    <td class="[{ $listclass}]"><input type="text" class="editinput" size="7" maxlength="[{$listitem->oxarticles__oxbprice->fldmax_length}]" name="editval[oxarticles__oxbprice]" value="" [{ $readonly }]></td>
    <td class="[{ $listclass}]"><input type="text" class="editinput" size="7" maxlength="[{$listitem->oxarticles__oxprice->fldmax_length}]" name="editval[oxarticles__oxprice]" value="" [{ $readonly }]></td>
    <td class="[{ $listclass}]"><input type="text" class="editinput" size="7" maxlength="[{$listitem->oxarticles__oxtprice->fldmax_length}]" name="editval[oxarticles__oxtprice]" value="" [{ $readonly }]></td>
    <td class="[{ $listclass}]"><input type="text" class="editinput" size="7" maxlength="[{$listitem->oxarticles__oxsort->fldmax_length}]" name="editval[oxarticles__oxsort]" value="" [{ $readonly }]></td>
    <td class="[{ $listclass}]"><input type="text" class="editinput" size="7" maxlength="[{$listitem->oxarticles__oxstock->fldmax_length}]" name="editval[oxarticles__oxstock]" value="" [{ $readonly }]></td>
    <td class="[{ $listclass}]">
        <select name="editval[oxarticles__oxstockflag]" class="editinput" style="width:100px;" [{ $readonly }]>
        <option value="1">[{ oxmultilang ident="GENERAL_STANDARD" }]</option>
        <option value="4">[{ oxmultilang ident="GENERAL_EXTERNALSTOCK" }]</option>
        <option value="2">[{ oxmultilang ident="GENERAL_OFFLINE" }]</option>
        <option value="3">[{ oxmultilang ident="GENERAL_NONORDER" }]</option>
        </select>
    </td>
