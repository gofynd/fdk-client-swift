

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: AdvanceSettingV2
         Used By: Theme
     */
    class AdvanceSettingV2: Codable {
        public var overlayPopup: OverlayPopupSettingV2?

        public var dividerStrokeHighlight: DividerStrokeHighlightSettingV2?

        public var userAlerts: UserAlertsSettingV2?

        public enum CodingKeys: String, CodingKey {
            case overlayPopup = "overlay_popup"

            case dividerStrokeHighlight = "divider_stroke_highlight"

            case userAlerts = "user_alerts"
        }

        public init(dividerStrokeHighlight: DividerStrokeHighlightSettingV2? = nil, overlayPopup: OverlayPopupSettingV2? = nil, userAlerts: UserAlertsSettingV2? = nil) {
            self.overlayPopup = overlayPopup

            self.dividerStrokeHighlight = dividerStrokeHighlight

            self.userAlerts = userAlerts
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                overlayPopup = try container.decode(OverlayPopupSettingV2.self, forKey: .overlayPopup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dividerStrokeHighlight = try container.decode(DividerStrokeHighlightSettingV2.self, forKey: .dividerStrokeHighlight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userAlerts = try container.decode(UserAlertsSettingV2.self, forKey: .userAlerts)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(overlayPopup, forKey: .overlayPopup)

            try? container.encodeIfPresent(dividerStrokeHighlight, forKey: .dividerStrokeHighlight)

            try? container.encodeIfPresent(userAlerts, forKey: .userAlerts)
        }
    }
}
