

import Foundation

public extension PlatformClient.Theme {
    /*
         Model: Section
         Used By: Theme
     */

    class Section: Codable {
        public var blocks: [Block]?

        public var predicate: Predicate?

        public var name: String?

        public var props: SectionProps?

        public var preset: SectionPreset?

        public enum CodingKeys: String, CodingKey {
            case blocks

            case predicate

            case name

            case props

            case preset
        }

        public init(blocks: [Block]? = nil, name: String? = nil, predicate: Predicate? = nil, preset: SectionPreset? = nil, props: SectionProps? = nil) {
            self.blocks = blocks

            self.predicate = predicate

            self.name = name

            self.props = props

            self.preset = preset
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                blocks = try container.decode([Block].self, forKey: .blocks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                predicate = try container.decode(Predicate.self, forKey: .predicate)

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
                props = try container.decode(SectionProps.self, forKey: .props)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                preset = try container.decode(SectionPreset.self, forKey: .preset)

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

public extension PlatformClient.ApplicationClient.Theme {
    /*
         Model: Section
         Used By: Theme
     */

    class Section: Codable {
        public var blocks: [Block]?

        public var predicate: Predicate?

        public var name: String?

        public var props: SectionProps?

        public var preset: SectionPreset?

        public enum CodingKeys: String, CodingKey {
            case blocks

            case predicate

            case name

            case props

            case preset
        }

        public init(blocks: [Block]? = nil, name: String? = nil, predicate: Predicate? = nil, preset: SectionPreset? = nil, props: SectionProps? = nil) {
            self.blocks = blocks

            self.predicate = predicate

            self.name = name

            self.props = props

            self.preset = preset
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                blocks = try container.decode([Block].self, forKey: .blocks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                predicate = try container.decode(Predicate.self, forKey: .predicate)

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
                props = try container.decode(SectionProps.self, forKey: .props)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                preset = try container.decode(SectionPreset.self, forKey: .preset)

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
