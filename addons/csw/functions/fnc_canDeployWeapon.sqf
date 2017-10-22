/*
 * Author: TCVM
 * Checks if you can deploy a weapon on the tripod
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Return Value:
 * Wether or not you can deploy the weapon <BOOL>
 *
 * Example:
 * [player] call ace_csw_fnc_canDeployWeapon
 *
 * Public: No
 */
#include "script_component.hpp"
params["_target", "_player"];

// If the current launcher has a config-value of "cswOptions::assembleTo" that means its a CSW
(getText(configFile >> "CfgWeapons" >> (secondaryWeapon _player) >> QGVAR(cswOptions) >> "baseTripod") isEqualTo typeof(_target));
