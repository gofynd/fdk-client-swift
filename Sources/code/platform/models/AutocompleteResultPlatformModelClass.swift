

import Foundation
public extension PlatformClient {
    /*
         Model: AutocompleteResult
         Used By: Catalog
     */

    class AutocompleteResult: Codable {
        public var customJson: [String: Any]?

        public var display: String?

        public var logo: Media?

        public var action: AutocompleteAction?

        public enum CodingKeys: String, CodingKey {
            case customJson = "_custom_json"

            case display

            case logo

            case action
        }

        public init(action: AutocompleteAction? = nil, display: String? = nil, logo: Media? = nil, customJson: [String: Any]? = nil) {
            self.customJson = customJson

            self.display = display

            self.logo = logo

            self.action = action
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(Media.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(AutocompleteAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(action, forKey: .action)
        }
    }
}
