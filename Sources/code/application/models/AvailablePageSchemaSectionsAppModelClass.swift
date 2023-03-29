

import Foundation
public extension ApplicationClient {
    /*
         Model: AvailablePageSchemaSections
         Used By: Theme
     */
    class AvailablePageSchemaSections: Codable {
        public var name: String?

        public var label: String?

        public var props: [String: Any]?

        public var blocks: [[String: Any]]?

        public var preset: [String: Any]?

        public var predicate: AvailablePagePredicate?

        public enum CodingKeys: String, CodingKey {
            case name

            case label

            case props

            case blocks

            case preset

            case predicate
        }

        public init(blocks: [[String: Any]]? = nil, label: String? = nil, name: String? = nil, predicate: AvailablePagePredicate? = nil, preset: [String: Any]? = nil, props: [String: Any]? = nil) {
            self.name = name

            self.label = label

            self.props = props

            self.blocks = blocks

            self.preset = preset

            self.predicate = predicate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                props = try container.decode([String: Any].self, forKey: .props)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                blocks = try container.decode([[String: Any]].self, forKey: .blocks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                preset = try container.decode([String: Any].self, forKey: .preset)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                predicate = try container.decode(AvailablePagePredicate.self, forKey: .predicate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(label, forKey: .label)

            try? container.encodeIfPresent(props, forKey: .props)

            try? container.encodeIfPresent(blocks, forKey: .blocks)

            try? container.encodeIfPresent(preset, forKey: .preset)

            try? container.encodeIfPresent(predicate, forKey: .predicate)
        }
    }
}
