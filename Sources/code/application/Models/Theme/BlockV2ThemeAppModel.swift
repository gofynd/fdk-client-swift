

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: BlockV2
         Used By: Theme
     */
    class BlockV2: Codable {
        public var type: String?

        public var name: String?

        public var props: BlockPropsV2?

        public enum CodingKeys: String, CodingKey {
            case type

            case name

            case props
        }

        public init(name: String? = nil, props: BlockPropsV2? = nil, type: String? = nil) {
            self.type = type

            self.name = name

            self.props = props
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

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
                props = try container.decode(BlockPropsV2.self, forKey: .props)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(props, forKey: .props)
        }
    }
}
