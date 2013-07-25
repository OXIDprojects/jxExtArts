<?php
/*
 *    This file is part of the module jxExtArts for OXID eShop Community Edition.
 *
 *    OXID eShop Community Edition is free software: you can redistribute it and/or modify
 *    it under the terms of the GNU General Public License as published by
 *    the Free Software Foundation, either version 3 of the License, or
 *    (at your option) any later version.
 *
 *    OXID eShop Community Edition is distributed in the hope that it will be useful,
 *    but WITHOUT ANY WARRANTY; without even the implied warranty of
 *    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *    GNU General Public License for more details.
 *
 *    You should have received a copy of the GNU General Public License
 *    along with OXID eShop Community Edition.  If not, see <http://www.gnu.org/licenses/>.
 *
 * @link      https://github.com/job963/jxExtArts
 * @license   http://www.gnu.org/licenses/gpl-3.0.html GPL v3 or later
 * @copyright (C) Joachim Barthel 2012-2013
 * 
 */

class jxExtArts_Install
{ 
    public static function onActivate() 
    { 
        //echo 'onActivate';
        return true;
        $this->_insertTplBlock('headitem.tpl',         'admin_headitem_js',                '/out/blocks/jxextarts_admin_headitem_js.tpl');
        $this->_insertTplBlock('article_pictures.tpl', 'admin_article_pictures_main',      '/out/blocks/admin_article_pictures_main.tpl');
        $this->_insertTplBlock('article_variant.tpl',  'admin_article_variant_newitem',    '/out/blocks/admin_article_variant_newitem.tpl');
        $this->_insertTplBlock('article_variant.tpl',  'admin_article_variant_listitem',   '/out/blocks/admin_article_variant_listitem.tpl');
        $this->_insertTplBlock('article_variant.tpl',  'admin_article_variant_parent',     '/out/blocks/admin_article_variant_parent.tpl');
        $this->_insertTplBlock('article_variant.tpl',  'admin_article_variant_listheader', '/out/blocks/admin_article_variant_listheader.tpl');
        $this->_insertTplBlock('article_stock.tpl',    'admin_article_stock_form',         '/out/blocks/admin_article_stock_form.tpl');
        $this->_insertTplBlock('article_main.tpl',     'admin_article_main_editor',        '/out/blocks/admin_article_main_editor.tpl');
        $this->_insertTplBlock('article_main.tpl',     'admin_article_main_form',          '/out/blocks/admin_article_main_form.tpl');

        return true;
    }

    
    public static function onDeactivate() 
    { 
        //echo 'onDeactivate';
        return true;

        $sShopId = jxExtArts_Install::_strShopId();
        $oDb = oxDb::getDb(); 

        $sSql = "DELETE FROM oxtplblocks WHERE oxmodule = 'jxextarts' AND oxshopid=$sShopId "; 
        $oRs = $oDb->execute($sSql); 

        return true;
    }
    
    
    private function _insertTplBlock( $sTemplate, $sBlockname, $sFile )
    {
        $oDb = oxDb::getDb(); 
        $sModule = 'jxextarts';
        $sShopId = $this->_strShopId();
        //echo 'vor getId()';
        //$sId = $this->getId();
        $sId = $sBlockname;
        
        $aSql[0] = "INSERT INTO oxtplblocks "
                 . "(oxid, oxactive, oxshopid, oxtemplate, oxblockname, oxpos, oxfile, oxmodule) "
                 . "VALUES"
                 ."('$sId', 1, $sShopId, '$sTemplate', '$sBlockname', 1, '$sFile', '$sModule') "; 
        
        $oRs = $oDb->execute($sSql); 
    }
    
    
    public function _strShopId()
    {
        /*echo 'strShopId';
        if ( is_string($this->getConfig()->getActiveShopId()) ) 
            $sShopId = "'" . $this->getConfig()->getActiveShopId() . "'";   // This is a CE or PE Shop
        else
            $sShopId = strval($this->getConfig()->getActiveShopId());       // This is a EE Shop
         * 
         */
        $sShopId = "'oxbaseshop'";
        
        return $sShopId;
    }
    
}    
