

import Foundation

public extension PlatformClient.Theme {
    /*
         Model: SectionPresetV2
         Used By: Theme
     */

    class SectionPresetV2: Codable {
        public var blocks: [BlockV2]?

        public enum CodingKeys: String, CodingKey {
            case blocks
        }

        public init(blocks: [BlockV2]? = nil) {
            self.blocks = blocks
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                blocks = try container.decode([BlockV2].self, forKey: .blocks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(blocks, forKey: .blocks)
        }
    }
}

public extension PlatformClient.ApplicationClient.Theme {
    /*
         Model: SectionPresetV2
         Used By: Theme
     */

    class SectionPresetV2: Codable {
        public var blocks: [BlockV2]?

        public enum CodingKeys: String, CodingKey {
            case blocks
        }

        public init(blocks: [BlockV2]? = nil) {
            self.blocks = blocks
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                blocks = try container.decode([BlockV2].self, forKey: .blocks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(blocks, forKey: .blocks)
        }
    }
}
