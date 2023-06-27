

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: AutocompleteResult1
         Used By: Catalog
     */

    class AutocompleteResult1: Codable {
        public var customJson: [String: Any]?

        public var action: AutocompleteAction1?

        public var logo: AutoCompleteMedia?

        public var display: String?

        public enum CodingKeys: String, CodingKey {
            case customJson = "_custom_json"

            case action

            case logo

            case display
        }

        public init(action: AutocompleteAction1? = nil, display: String? = nil, logo: AutoCompleteMedia? = nil, customJson: [String: Any]? = nil) {
            self.customJson = customJson

            self.action = action

            self.logo = logo

            self.display = display
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
                action = try container.decode(AutocompleteAction1.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(AutoCompleteMedia.self, forKey: .logo)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(display, forKey: .display)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: AutocompleteResult1
         Used By: Catalog
     */

    class AutocompleteResult1: Codable {
        public var customJson: [String: Any]?

        public var action: AutocompleteAction1?

        public var logo: AutoCompleteMedia?

        public var display: String?

        public enum CodingKeys: String, CodingKey {
            case customJson = "_custom_json"

            case action

            case logo

            case display
        }

        public init(action: AutocompleteAction1? = nil, display: String? = nil, logo: AutoCompleteMedia? = nil, customJson: [String: Any]? = nil) {
            self.customJson = customJson

            self.action = action

            self.logo = logo

            self.display = display
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
                action = try container.decode(AutocompleteAction1.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(AutoCompleteMedia.self, forKey: .logo)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(display, forKey: .display)
        }
    }
}
