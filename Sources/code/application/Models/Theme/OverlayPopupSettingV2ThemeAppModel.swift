

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: OverlayPopupSettingV2
         Used By: Theme
     */
    class OverlayPopupSettingV2: Codable {
        public var dialogBackgroung: String?

        public var overlay: String?

        public enum CodingKeys: String, CodingKey {
            case dialogBackgroung = "dialog_backgroung"

            case overlay
        }

        public init(dialogBackgroung: String? = nil, overlay: String? = nil) {
            self.dialogBackgroung = dialogBackgroung

            self.overlay = overlay
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dialogBackgroung = try container.decode(String.self, forKey: .dialogBackgroung)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                overlay = try container.decode(String.self, forKey: .overlay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dialogBackgroung, forKey: .dialogBackgroung)

            try? container.encodeIfPresent(overlay, forKey: .overlay)
        }
    }
}
