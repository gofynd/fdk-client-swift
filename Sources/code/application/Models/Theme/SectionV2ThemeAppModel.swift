

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: SectionV2
         Used By: Theme
     */
    class SectionV2: Codable {
        public var blocks: [BlockV2]?

        public var predicate: PredicateV2?

        public var name: String?

        public var props: SectionPropsV2?

        public var preset: SectionPresetV2?

        public enum CodingKeys: String, CodingKey {
            case blocks

            case predicate

            case name

            case props

            case preset
        }

        public init(blocks: [BlockV2]? = nil, name: String? = nil, predicate: PredicateV2? = nil, preset: SectionPresetV2? = nil, props: SectionPropsV2? = nil) {
            self.blocks = blocks

            self.predicate = predicate

            self.name = name

            self.props = props

            self.preset = preset
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                blocks = try container.decode([BlockV2].self, forKey: .blocks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                predicate = try container.decode(PredicateV2.self, forKey: .predicate)

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
                props = try container.decode(SectionPropsV2.self, forKey: .props)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                preset = try container.decode(SectionPresetV2.self, forKey: .preset)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(blocks, forKey: .blocks)

            try? container.encodeIfPresent(predicate, forKey: .predicate)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(props, forKey: .props)

            try? container.encodeIfPresent(preset, forKey: .preset)
        }
    }
}
