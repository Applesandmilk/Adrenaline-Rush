using UnrealBuildTool;

public class RacingGameTarget : TargetRules
{
	public RacingGameTarget(TargetInfo Target) : base(Target)
	{
		DefaultBuildSettings = BuildSettingsVersion.V2;
		Type = TargetType.Game;
		ExtraModuleNames.Add("RacingGame");
	}
}
