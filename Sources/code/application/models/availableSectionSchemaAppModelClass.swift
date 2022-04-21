

import Foundation
public extension ApplicationClient {
    /*
         Model: availableSectionSchema
         Used By: Theme
     */
    class availableSectionSchema: Codable {
        public var blocks: [Blocks]?

        public var name: String?

        public var label: String?

        public var props: [BlocksProps]?

        public enum CodingKeys: String, CodingKey {
            case blocks

            case name

            case label

            case props
        }

        public init(blocks: [Blocks]? = nil, label: String? = nil, name: String? = nil, props: [BlocksProps]? = nil) {
            self.blocks = blocks

            self.name = name

            self.label = label

            self.props = props
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                blocks = try container.decode([Blocks].self, forKey: .blocks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                label = try container.decode(String.self, forKey: .label)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                props = try container.decode([BlocksProps].self, forKey: .props)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(blocks, forKey: .blocks)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(label, forKey: .label)

            try? container.encodeIfPresent(props, forKey: .props)
        }
    }
}
