@ECHO OFF
SET DXC="D:\UE_5.0\UE_5.0\Engine\Binaries\ThirdParty\ShaderConductor\Win64\dxc.exe"
IF NOT EXIST %DXC% (
	ECHO Couldn't find dxc.exe under "D:\UE_5.0\UE_5.0\Engine\Binaries\ThirdParty\ShaderConductor\Win64"
	GOTO :END
)
%DXC% /auto-binding-space 0 /exports PathTracingMaterialCHS /Zpr /O3 /enable-16bit-types /T lib_6_3 /Fc PathTracingMaterialHitShader.d3dasm /Fo PathTracingMaterialHitShader.dxil PathTracingMaterialHitShader.usf
:END
PAUSE