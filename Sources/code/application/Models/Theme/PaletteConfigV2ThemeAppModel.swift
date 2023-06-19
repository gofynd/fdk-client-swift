

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: PaletteConfigV2
         Used By: Theme
     */
    class PaletteConfigV2: Codable {
        public var generalSetting: GeneralSettingV2?

        public var advanceSetting: AdvanceSettingV2?

        public enum CodingKeys: String, CodingKey {
            case generalSetting = "general_setting"

            case advanceSetting = "advance_setting"
        }

        public init(advanceSetting: AdvanceSettingV2? = nil, generalSetting: GeneralSettingV2? = nil) {
            self.generalSetting = generalSetting

            self.advanceSetting = advanceSetting
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                generalSetting = try container.decode(GeneralSettingV2.self, forKey: .generalSetting)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                advanceSetting = try container.decode(AdvanceSettingV2.self, forKey: .advanceSetting)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(generalSetting, forKey: .generalSetting)

            try? container.encodeIfPresent(advanceSetting, forKey: .advanceSetting)
        }
    }
}
