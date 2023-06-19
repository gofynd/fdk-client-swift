

import Foundation

public extension PlatformClient.Theme {
    /*
         Model: PresetV2
         Used By: Theme
     */

    class PresetV2: Codable {
        public var pages: [PageV2]?

        public enum CodingKeys: String, CodingKey {
            case pages
        }

        public init(pages: [PageV2]? = nil) {
            self.pages = pages
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pages = try container.decode([PageV2].self, forKey: .pages)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pages, forKey: .pages)
        }
    }
}

public extension PlatformClient.ApplicationClient.Theme {
    /*
         Model: PresetV2
         Used By: Theme
     */

    class PresetV2: Codable {
        public var pages: [PageV2]?

        public enum CodingKeys: String, CodingKey {
            case pages
        }

        public init(pages: [PageV2]? = nil) {
            self.pages = pages
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pages = try container.decode([PageV2].self, forKey: .pages)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pages, forKey: .pages)
        }
    }
}
