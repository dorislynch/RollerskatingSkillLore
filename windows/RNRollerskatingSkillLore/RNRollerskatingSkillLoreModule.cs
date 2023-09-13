using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Rollerskating.Skill.Lore.RNRollerskatingSkillLore
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNRollerskatingSkillLoreModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNRollerskatingSkillLoreModule"/>.
        /// </summary>
        internal RNRollerskatingSkillLoreModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNRollerskatingSkillLore";
            }
        }
    }
}
