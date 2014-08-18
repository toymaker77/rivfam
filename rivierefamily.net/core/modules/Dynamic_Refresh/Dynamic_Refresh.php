<?php
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

class Dynamic_Refresh extends CodonModule 
{
    
    public $title = 'Dynamic Refresh';
    /**
     * Activity::index()
     * 
     * @return void
     */
    public function index() {
        if (!Auth::LoggedIn()) {
            $this->set('message', '<br /><h3 align="center">You must be logged in to access this feature!</h3><br />');
            $this->render('core_error.tpl');
            return;
        }
        // to view this module, access using YOURDOMAIN.com/index.php/Dynamic_Refresh
        // Don't forget to rename all the files, folders and the "Dynamic_Refresh" part on line 19 of this file.
        // Good luck with your development.
        
        $this->render('dynamic_refresh/dynamicrefresh.tpl');
        
    }
    public function dynamicrefresh_data() {
        if (!Auth::LoggedIn()) {
            $this->set('message', '<br /><h3 align="center">You must be logged in to access this feature!</h3><br />');
            $this->render('core_error.tpl');
            return;
        }
        $this->render('dynamic_refresh/dynamicrefresh_data.tpl');
    }
    public function Item1() {
        if (!Auth::LoggedIn()) {
            $this->set('message', '<br /><h3 align="center">You must be logged in to access this feature!</h3><br />');
            $this->render('core_error.tpl');
            return;
        }
        $this->render('dynamic_refresh/Item1.tpl');
    }
    public function Item2() {
        if (!Auth::LoggedIn()) {
            $this->set('message', '<br /><h3 align="center">You must be logged in to access this feature!</h3><br />');
            $this->render('core_error.tpl');
            return;
        }
        $this->render('dynamic_refresh/Item2.tpl');
    }
    public function messagecount() {
        if (!Auth::LoggedIn()) {
            $this->set('message', '<br /><h3 align="center">You must be logged in to access this feature!</h3><br />');
            $this->render('core_error.tpl');
            return;
        }
        $this->render('dynamic_refresh/messagecount.tpl');
    }
    public function messagecount2() {
        if (!Auth::LoggedIn()) {
            $this->set('message', '<br /><h3 align="center">You must be logged in to access this feature!</h3><br />');
            $this->render('core_error.tpl');
            return;
        }
        $this->render('dynamic_refresh/messagecount2.tpl');
    }
    public function messagecount3() {
        if (!Auth::LoggedIn()) {
            $this->set('message', '<br /><h3 align="center">You must be logged in to access this feature!</h3><br />');
            $this->render('core_error.tpl');
            return;
        }
        $this->render('dynamic_refresh/messagecount3.tpl');
    }
    public function messagecount4() {
        if (!Auth::LoggedIn()) {
            $this->set('message', '<br /><h3 align="center">You must be logged in to access this feature!</h3><br />');
            $this->render('core_error.tpl');
            return;
        }
        $this->render('dynamic_refresh/messagecount4.tpl');
    }
    public function frontpagedata() {
        if (!Auth::LoggedIn()) {
            $this->set('message', '<br /><h3 align="center">You must be logged in to access this feature!</h3><br />');
            $this->render('core_error.tpl');
            return;
        }
        $this->render('dynamic_refresh/frontpage_data.tpl');
    }                                                                                                                       
}