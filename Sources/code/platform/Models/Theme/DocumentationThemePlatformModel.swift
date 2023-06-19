

import Foundation

public extension PlatformClient.Theme {
    /*
         Model: Documentation
         Used By: Theme
     */

    class Documentation: Codable {
        public var notes: String?

        public var url: String?

        public enum CodingKeys: String, CodingKey {
            case notes

            case url
        }

        public init(notes: String? = nil, url: String? = nil) {
            self.notes = notes

            self.url = url
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                notes = try container.decode(String.self, forKey: .notes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(notes, forKey: .notes)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }
}

public extension PlatformClient.ApplicationClient.Theme {
    /*
         Model: Documentation
         Used By: Theme
     */

    class Documentation: Codable {
        public var notes: String?

        public var url: String?

        public enum CodingKeys: String, CodingKey {
            case notes

            case url
        }

        public init(notes: String? = nil, url: String? = nil) {
            self.notes = notes

            self.url = url
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                notes = try container.decode(String.self, forKey: .notes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(notes, forKey: .notes)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }
}
