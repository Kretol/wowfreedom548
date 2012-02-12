SET @NPC := 26841;
SET @GUID := 40496; -- need 9

SET @SPAWN0 := (@GUID  )*10;
SET @SPAWN1 := (@GUID+1)*10;
SET @SPAWN2 := (@GUID+2)*10;
SET @SPAWN3 := (@GUID+3)*10;
SET @SPAWN4 := (@GUID+4)*10;
SET @SPAWN5 := (@GUID+5)*10;
SET @SPAWN6 := (@GUID+6)*10;
SET @SPAWN7 := (@GUID+7)*10;
SET @SPAWN8 := (@GUID+8)*10;

DELETE FROM `creature` WHERE `guid` BETWEEN @GUID AND @GUID+8;
INSERT INTO creature (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(@GUID  ,@NPC,1,1,1,0,0,4690.292,859.291,154.1271,2.914072,120,0,0,1,0,0,0,0,0),
(@GUID+1,@NPC,1,1,1,0,0,4362.418,750.5102,123.7846,6.194367,120,0,0,1,0,0,0,0,0),
(@GUID+2,@NPC,1,1,1,0,0,4191.03,645.8215,109.6868,0.4027403,120,0,0,1,0,0,0,0,0),
(@GUID+3,@NPC,1,1,1,0,0,4098.345,657.0866,99.36436,5.185792,120,0,0,1,0,0,0,0,0),
(@GUID+4,@NPC,1,1,1,0,0,4065.753,709.2308,108.47,1.153499,120,0,0,1,0,0,0,0,0),
(@GUID+5,@NPC,1,1,1,0,0,4012.895,495.4877,82.1595,0.8684024,120,0,0,1,0,0,0,0,0),
(@GUID+6,@NPC,1,1,1,0,0,3941.605,552.9745,144.0994,0.06546114,120,0,0,1,0,0,0,0,0),
(@GUID+7,@NPC,1,1,1,0,0,3995.586,447.6094,88.55691,1.320955,120,0,0,1,0,0,0,0,0),
(@GUID+8,@NPC,1,1,1,0,0,3869.004,707.384,134.3378,4.695541,120,0,0,1,0,0,0,0,0);

DELETE FROM `creature_addon` WHERE `guid` IN (@GUID,@GUID+1,@GUID+2,@GUID+3,@GUID+6,@GUID+7);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@GUID  ,@SPAWN0,0,0,0,0,''),
(@GUID+1,@SPAWN1,0,0,0,0,''),
(@GUID+2,@SPAWN2,0,0,0,0,''),
(@GUID+3,@SPAWN3,0,0,0,0,''),
(@GUID+4,@SPAWN4,0,0,0,0,''),
(@GUID+5,@SPAWN5,0,0,0,0,''),
(@GUID+6,@SPAWN6,0,0,0,0,''),
(@GUID+7,@SPAWN7,0,0,0,0,''),
(@GUID+8,@SPAWN8,0,0,0,0,'');

DELETE FROM `waypoint_data` WHERE `id` IN (@NPC1,@NPC2,@NPC3,@NPC4,@NPC5,@NPC6);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
-- 1st
(@SPAWN0,0,4716.777,833.6211,169.0006,0,0,0,0,100,0),
(@SPAWN0,1,4643.756,855.9798,132.5562,0,0,0,0,100,0),
(@SPAWN0,2,4550.864,812.4362,133.6673,0,0,0,0,100,0),
(@SPAWN0,3,4532.678,762.772,130.1951,0,0,0,0,100,0),
(@SPAWN0,4,4566.182,662.6984,132.7506,0,0,0,0,100,0),
(@SPAWN0,5,4592.511,595.6938,130.1674,0,0,0,0,100,0),
(@SPAWN0,6,4732.632,631.5569,164.584,0,0,0,0,100,0),
(@SPAWN0,7,4716.777,833.6211,169.0006,0,0,0,0,100,0),
(@SPAWN0,8,4643.756,855.9798,132.5562,0,0,0,0,100,0),
(@SPAWN0,9,4550.864,812.4362,133.6673,0,0,0,0,100,0),
-- 2nd
(@SPAWN1,0,4431.805,596.8371,157.1775,0,0,0,0,100,0),
(@SPAWN1,1,4128.16,507.4055,198.8118,0,0,0,0,100,0),
(@SPAWN1,2,4102.405,567.1112,198.8118,0,0,0,0,100,0),
(@SPAWN1,3,4112.486,636.6321,86.95068,0,0,0,0,100,0),
(@SPAWN1,4,4141.771,704.1605,67.97847,0,0,0,0,100,0),
(@SPAWN1,5,4191.388,726.6014,98.11736,0,0,0,0,100,0),
(@SPAWN1,6,4247.502,724.9836,182.4229,0,0,0,0,100,0),
(@SPAWN1,7,4295.807,746.8245,210.1174,0,0,0,0,100,0),
(@SPAWN1,8,4387.15,744.5955,93.08962,0,0,0,0,100,0),
(@SPAWN1,9,4428.509,680.8868,91.33962,0,0,0,0,100,0),
(@SPAWN1,10,4431.805,596.8371,157.1775,0,0,0,0,100,0),
(@SPAWN1,11,4128.16,507.4055,198.8118,0,0,0,0,100,0),
(@SPAWN1,12,4102.405,567.1112,198.8118,0,0,0,0,100,0),
-- 3rd
(@SPAWN2,0,4170.111,627.0887,100.283,0,0,0,0,100,0),
(@SPAWN2,1,4265.816,644.1154,136.2274,0,0,0,0,100,0),
(@SPAWN2,2,4272.799,551.5093,50.92185,0,0,0,0,100,0),
(@SPAWN2,3,4378.531,451.3199,54.28299,0,0,0,0,100,0),
(@SPAWN2,4,4277.019,345.219,121.2274,0,0,0,0,100,0),
(@SPAWN2,5,4185.893,458.5754,118.5608,0,0,0,0,100,0),
(@SPAWN2,6,4170.111,627.0887,100.283,0,0,0,0,100,0),
(@SPAWN2,7,4265.816,644.1154,136.2274,0,0,0,0,100,0),
(@SPAWN2,8,4272.799,551.5093,50.92185,0,0,0,0,100,0),
-- 4th
(@SPAWN3,0,4464.15,712.9612,99.36437,0,0,0,0,100,0),
(@SPAWN3,1,4466.412,769.1019,99.36437,0,0,0,0,100,0),
(@SPAWN3,2,4427.949,785.3342,99.36437,0,0,0,0,100,0),
(@SPAWN3,3,4382.415,794.0613,99.36437,0,0,0,0,100,0),
(@SPAWN3,4,4312.128,808.5213,99.36437,0,0,0,0,100,0),
(@SPAWN3,5,4206.404,817.2534,99.36437,0,0,0,0,100,0),
(@SPAWN3,6,4089.363,771.5425,99.36437,0,0,0,0,100,0),
(@SPAWN3,7,4114.452,637.4808,99.36437,0,0,0,0,100,0),
(@SPAWN3,8,4265.095,661.3358,99.36437,0,0,0,0,100,0),
(@SPAWN3,9,4366.876,678.4272,99.36437,0,0,0,0,100,0),
(@SPAWN3,10,4433.122,674.1555,99.36437,0,0,0,0,100,0),
(@SPAWN3,11,4464.15,712.9612,99.36437,0,0,0,0,100,0),
(@SPAWN3,12,4466.412,769.1019,99.36437,0,0,0,0,100,0),
(@SPAWN3,13,4427.949,785.3342,99.36437,0,0,0,0,100,0),
-- 5th
(@SPAWN4,0,4331.604,778.9,114.7446,0,0,0,0,100,0),
(@SPAWN4,1,4270.823,698.3784,130.4668,0,0,0,0,100,0),
(@SPAWN4,2,4232.598,681.8058,126.7724,0,0,0,0,100,0),
(@SPAWN4,3,4156.661,638.471,129.439,0,0,0,0,100,0),
(@SPAWN4,4,4062.89,681.9251,102.9113,0,0,0,0,100,0),
(@SPAWN4,5,4096.761,758.9566,123.5501,0,0,0,0,100,0),
(@SPAWN4,6,4134.598,799.989,109.8835,0,0,0,0,100,0),
(@SPAWN4,7,4189.475,840.5444,114.6335,0,0,0,0,100,0),
(@SPAWN4,8,4274.875,812.3191,101.3001,0,0,0,0,100,0),
(@SPAWN4,9,4331.604,778.9,114.7446,0,0,0,0,100,0),
(@SPAWN4,10,4270.823,698.3784,130.4668,0,0,0,0,100,0),
(@SPAWN4,11,4232.598,681.8058,126.7724,0,0,0,0,100,0),
-- 6th
(@SPAWN5,0,3769.598,454.0081,82.1595,0,0,0,0,100,0),
(@SPAWN5,1,3879.825,441.5815,82.1595,0,0,0,0,100,0),
(@SPAWN5,2,3926.388,447.295,82.1595,0,0,0,0,100,0),
(@SPAWN5,3,4017.082,501.3171,82.1595,0,0,0,0,100,0),
(@SPAWN5,4,4015.132,597.8423,82.1595,0,0,0,0,100,0),
(@SPAWN5,5,3923.788,576.8113,82.1595,0,0,0,0,100,0),
(@SPAWN5,6,3865.991,561.2335,82.1595,0,0,0,0,100,0),
(@SPAWN5,7,3795.942,538.189,82.1595,0,0,0,0,100,0),
(@SPAWN5,8,3769.598,454.0081,82.1595,0,0,0,0,100,0),
(@SPAWN5,9,3879.825,441.5815,82.1595,0,0,0,0,100,0),
(@SPAWN5,10,3926.388,447.295,82.1595,0,0,0,0,100,0),
-- 7th
(@SPAWN6,0,3886.876,810.7806,134.3378,0,0,0,0,100,0),
(@SPAWN6,1,3868.72,688.4549,134.3378,0,0,0,0,100,0),
(@SPAWN6,2,3883.254,607.1956,134.3378,0,0,0,0,100,0),
(@SPAWN6,3,3904.998,559.2425,134.3378,0,0,0,0,100,0),
(@SPAWN6,4,3969.396,561.8792,148.5877,0,0,0,0,100,0),
(@SPAWN6,5,4010.678,638.0726,130.6155,0,0,0,0,100,0),
(@SPAWN6,6,3976.813,756.3585,134.3378,0,0,0,0,100,0),
(@SPAWN6,7,3886.876,810.7806,134.3378,0,0,0,0,100,0),
(@SPAWN6,8,3868.72,688.4549,134.3378,0,0,0,0,100,0),
(@SPAWN6,9,3883.254,607.1956,134.3378,0,0,0,0,100,0),
-- 8th
(@SPAWN7,0,4187.318,438.9777,88.55692,0,0,0,0,100,0),
(@SPAWN7,1,4151.397,351.4095,88.55692,0,0,0,0,100,0),
(@SPAWN7,2,4106.679,347.3126,88.55692,0,0,0,0,100,0),
(@SPAWN7,3,4056.414,373.3088,88.55692,0,0,0,0,100,0),
(@SPAWN7,4,3994.193,440.1974,88.55692,0,0,0,0,100,0),
(@SPAWN7,5,4076.892,564.8895,88.55692,0,0,0,0,100,0),
(@SPAWN7,6,4178.652,558.3406,88.55692,0,0,0,0,100,0),
(@SPAWN7,7,4187.318,438.9777,88.55692,0,0,0,0,100,0),
(@SPAWN7,8,4151.397,351.4095,88.55692,0,0,0,0,100,0),
(@SPAWN7,9,4106.679,347.3126,88.55692,0,0,0,0,100,0),
-- 9th
(@SPAWN8,0,3886.876,810.7806,134.3378,0,0,0,0,100,0),
(@SPAWN8,1,3868.72,688.4549,134.3378,0,0,0,0,100,0),
(@SPAWN8,2,3883.254,607.1956,134.3378,0,0,0,0,100,0),
(@SPAWN8,3,3904.998,559.2425,134.3378,0,0,0,0,100,0),
(@SPAWN8,4,3969.396,561.8792,148.5877,0,0,0,0,100,0),
(@SPAWN8,5,4010.678,638.0726,130.6155,0,0,0,0,100,0),
(@SPAWN8,6,3976.813,756.3585,134.3378,0,0,0,0,100,0),
(@SPAWN8,7,3886.876,810.7806,134.3378,0,0,0,0,100,0),
(@SPAWN8,8,3868.72,688.4549,134.3378,0,0,0,0,100,0),
(@SPAWN8,9,3883.254,607.1956,134.3378,0,0,0,0,100,0);