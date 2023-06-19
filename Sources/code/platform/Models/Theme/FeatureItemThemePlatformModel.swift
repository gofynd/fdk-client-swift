

import Foundation

public extension PlatformClient.Theme {
    /*
         Model: FeatureItem
         Used By: Theme
     */

    class FeatureItem: Codable {
        public var label: String?

        public var description: String?

        public enum CodingKeys: String, CodingKey {
            case label

            case description
        }

        public init(description: String? = nil, label: String? = nil) {
            self.label = label

            self.description = description
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                label = try container.decode(String.self, forKey: .label)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(label, forKey: .label)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }
}

public extension PlatformClient.ApplicationClient.Theme {
    /*
         Model: FeatureItem
         Used By: Theme
     */

    class FeatureItem: Codable {
        public var label: String?

        public var description: String?

        public enum CodingKeys: String, CodingKey {
            case label

            case description
        }

        public init(description: String? = nil, label: String? = nil) {
            self.label = label

            self.description = description
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                label = try container.decode(String.self, forKey: .label)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(label, forKey: .label)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }
}
