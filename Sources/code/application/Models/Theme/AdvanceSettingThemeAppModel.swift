

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: AdvanceSetting
        Used By: Theme
    */
    class AdvanceSetting: Codable {
        
        public var overlayPopup: OverlayPopupSetting?
        
        public var dividerStrokeHighlight: DividerStrokeHighlightSetting?
        
        public var userAlerts: UserAlertsSetting?
        

        public enum CodingKeys: String, CodingKey {
            
            case overlayPopup = "overlay_popup"
            
            case dividerStrokeHighlight = "divider_stroke_highlight"
            
            case userAlerts = "user_alerts"
            
        }

        public init(dividerStrokeHighlight: DividerStrokeHighlightSetting? = nil, overlayPopup: OverlayPopupSetting? = nil, userAlerts: UserAlertsSetting? = nil) {
            
            self.overlayPopup = overlayPopup
            
            self.dividerStrokeHighlight = dividerStrokeHighlight
            
            self.userAlerts = userAlerts
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                overlayPopup = try container.decode(OverlayPopupSetting.self, forKey: .overlayPopup)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                dividerStrokeHighlight = try container.decode(DividerStrokeHighlightSetting.self, forKey: .dividerStrokeHighlight)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                userAlerts = try container.decode(UserAlertsSetting.self, forKey: .userAlerts)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(overlayPopup, forKey: .overlayPopup)
            
            
            
            try? container.encodeIfPresent(dividerStrokeHighlight, forKey: .dividerStrokeHighlight)
            
            
            
            try? container.encodeIfPresent(userAlerts, forKey: .userAlerts)
            
            
        }
        
    }
}
