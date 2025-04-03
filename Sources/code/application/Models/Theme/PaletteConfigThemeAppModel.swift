

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: PaletteConfig
        Used By: Theme
    */
    class PaletteConfig: Codable {
        
        public var generalSetting: GeneralSetting?
        
        public var advanceSetting: AdvanceSetting?
        

        public enum CodingKeys: String, CodingKey {
            
            case generalSetting = "general_setting"
            
            case advanceSetting = "advance_setting"
            
        }

        public init(advanceSetting: AdvanceSetting? = nil, generalSetting: GeneralSetting? = nil) {
            
            self.generalSetting = generalSetting
            
            self.advanceSetting = advanceSetting
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                generalSetting = try container.decode(GeneralSetting.self, forKey: .generalSetting)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                advanceSetting = try container.decode(AdvanceSetting.self, forKey: .advanceSetting)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(generalSetting, forKey: .generalSetting)
            
            
            
            try? container.encodeIfPresent(advanceSetting, forKey: .advanceSetting)
            
            
        }
        
    }
}
