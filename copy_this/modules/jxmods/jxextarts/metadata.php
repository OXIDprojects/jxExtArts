<?php

/**
 * Metadata version
 */
$sMetadataVersion = '1.1';
 
/**
 * Module information
 */
$aModule = array(
    'id'           => 'jxextarts',
    'title'        => 'jxExtArts - Extended Article Editing',
    'description'  => array(
                        'de' => 'Erweiterung der Artikel-Bearbeitung',
                        'en' => 'Extension of Products Editing'
                        ),
    'thumbnail'    => 'jxextarts.png',
    'version'      => '0.1',
    'author'       => 'Joachim Barthel',
    'url'          => 'https://github.com/job963/jxExtArts',
    'email'        => 'jobarthel@gmail.com',
    'extend'       => array(
                        ),
    'files'        => array(
        'jxextarts_install'  => 'jxmods/jxextarts/application/controllers/admin/jxextarts_install.php'
                        ),
    'templates'    => array(
                        ),
    'blocks' => array(
                    array(
                        'template' => 'article_main.tpl', 
                        'block'    => 'admin_article_main_form',                     
                        'file'     => '/out/blocks/admin_article_main_form.tpl'
                            ),
                    array(
                        'template' => 'article_main.tpl', 
                        'block'    => 'admin_article_main_editor',                     
                        'file'     => '/out/blocks/admin_article_main_editor.tpl'
                            ),
                    array(
                        'template' => 'article_stock.tpl', 
                        'block'    => 'admin_article_stock_form',                     
                        'file'     => '/out/blocks/admin_article_stock_form.tpl'
                            ),
                    array(
                        'template' => 'article_variant.tpl', 
                        'block'    => 'admin_article_variant_listheader',                     
                        'file'     => '/out/blocks/admin_article_variant_listheader.tpl'
                            ),
                    array(
                        'template' => 'article_variant.tpl', 
                        'block'    => 'admin_article_variant_parent',                     
                        'file'     => '/out/blocks/admin_article_variant_parent.tpl'
                            ),
                    array(
                        'template' => 'article_variant.tpl', 
                        'block'    => 'admin_article_variant_listitem',                     
                        'file'     => '/out/blocks/admin_article_variant_listitem.tpl'
                            ),
                    array(
                        'template' => 'article_variant.tpl', 
                        'block'    => 'admin_article_variant_newitem',                     
                        'file'     => '/out/blocks/admin_article_variant_newitem.tpl'
                            ),
                    array(
                        'template' => 'article_pictures.tpl', 
                        'block'    => 'admin_article_pictures_main',                     
                        'file'     => '/out/blocks/admin_article_pictures_main.tpl'
                            ),
                    array(
                        'template' => 'headitem.tpl', 
                        'block'    => 'admin_headitem_js',                     
                        'file'     => '/out/blocks/jxextarts_admin_headitem_js.tpl'
                            )
                        ),
    'events'       => array(
        'onActivate'   => 'jxextarts_install::onActivate', 
        'onDeactivate' => 'jxextarts_install::onDeactivate'
                        ),
    'settings' => array(
                    array(
                            'group' => 'JXEXTARTED_BLOCKS', 
                            'name'  => 'sJxExtArtEdShowArticleMain', 
                            'type'  => 'bool', 
                            'value' => 'true'
                            ),
                    array(
                            'group' => 'JXEXTARTED_BLOCKS', 
                            'name'  => 'sJxExtArtEdShowArticleStock', 
                            'type'  => 'bool', 
                            'value' => 'true'
                            ),
                    array(
                            'group' => 'JXEXTARTED_BLOCKS', 
                            'name'  => 'sJxExtArtEdShowArticleVariant', 
                            'type'  => 'bool', 
                            'value' => 'true'
                            ),
                    array(
                            'group' => 'JXEXTARTED_BLOCKS', 
                            'name'  => 'sJxExtArtEdShowArticlePictures', 
                            'type'  => 'bool', 
                            'value' => 'true'
                            ),
                    array(
                            'group' => 'JXEXTARTED_FUNCTIONS', 
                            'name'  => 'sJxExtArtEdCheckEAN', 
                            'type'  => 'bool', 
                            'value' => 'true'
                            ),
                    array(
                            'group' => 'JXEXTARTED_FUNCTIONS', 
                            'name'  => 'sJxExtArtEdCheckDate', 
                            'type'  => 'bool', 
                            'value' => 'true'
                            )
                        )
    );

?>
