<!--Dynamic Refresh Script - //////////////////////////////////////////////////////////////
//COPYWRITE MAINTAINED AT WINGSONAIR.NET///////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////
 * @author Michael Sturm
 * @copyright Copyright (c) 2014, Michael Sturm
 * @link http://wingsonair.net
 * @license retained at http://wingsonair.net
 */--!>
 
                 <table class="flightboard" width="100%" border="0" align="middle%" bgcolor="#1F1F1F">
                                    <?php
                                    $results = ACARSData::GetACARSData();
                                    if (count($results) > 0){
                                    ?>                                    
                                        <th classcolspan="1" align="center">                                        
                                        Active Flights                                       
                                        </th>             
                                        <p align="center"><span style="vertical-align:middle; float:right; padding-top:10px; padding-bottom: 10px; padding-right:10px"><blink><b><font color="#00ff00" face="Tahoma,Helvetica,sans-serif">
                                                "Flights In Progress"
                                            </font></b></blink></span></p>
                                        <tr>
                                            <td height=185></td>                                            
                                        </tr>
                                        </table>
                                    <?php
                                        }else{
                                    ?>
                                        <th colspan="1" align="center">                                        
                                        Active Flights                                       
                                        </th>
                                        <p align="center"><span style="vertical-align:middle; float:right; padding-top:10px; padding-bottom: 10px; padding-right:10px"><blink><b><font color="#ff0000" face="Tahoma,Helvetica,sans-serif">
                                                "No Flights In Progress"
                                            </font></b></blink></span></p>
                                        <tr>
                                            <td height=185></td>                                            
                                        </tr> 
                                    </table>                                    
                                    <?php
                                        }
                                    ?>