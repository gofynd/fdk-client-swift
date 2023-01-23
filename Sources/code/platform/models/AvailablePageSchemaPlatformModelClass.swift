

import Foundation
public extension PlatformClient {
    /*
         Model: AvailablePageSchema
         Used By: Theme
     */

    class AvailablePageSchema: Codable {
        public var value: String?

        public var text: String?

        public var path: String?

        public var type: String?

        public var sections: [AvailablePageSchemaSections]?

        public var sectionsMeta: [AvailablePageSectionMetaAttributes]?

        public var theme: String?

        public var seo: AvailablePageSeo?

        public var props: [[String: Any]]?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case value

            case text

            case path

            case type

            case sections

            case sectionsMeta = "sections_meta"

            case theme

            case seo

            case props

            case id = "_id"
        }

        public init(path: String? = nil, props: [[String: Any]]? = nil, sections: [AvailablePageSchemaSections]? = nil, sectionsMeta: [AvailablePageSectionMetaAttributes]? = nil, seo: AvailablePageSeo? = nil, text: String? = nil, theme: String? = nil, type: String? = nil, value: String? = nil, id: String? = nil) {
            self.value = value

            self.text = text

            self.path = path

            self.type = type

            self.sections = sections

            self.sectionsMeta = sectionsMeta

            self.theme = theme

            self.seo = seo

            self.props = props

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                text = try container.decode(String.self, forKey: .text)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                path = try container.decode(String.self, forKey: .path)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sections = try container.decode([AvailablePageSchemaSections].self, forKey: .sections)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sectionsMeta = try container.decode([AvailablePageSectionMetaAttributes].self, forKey: .sectionsMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                theme = try container.decode(String.self, forKey: .theme)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                seo = try container.decode(AvailablePageSeo.self, forKey: .seo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                props = try container.decode([[String: Any]].self, forKey: .props)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(path, forKey: .path)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(sections, forKey: .sections)

            try? container.encodeIfPresent(sectionsMeta, forKey: .sectionsMeta)

            try? container.encodeIfPresent(theme, forKey: .theme)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(props, forKey: .props)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
