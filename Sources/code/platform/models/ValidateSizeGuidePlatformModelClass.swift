

import Foundation
public extension PlatformClient {
    /*
         Model: ValidateSizeGuide
         Used By: Catalog
     */

    class ValidateSizeGuide: Codable {
        public var companyId: Int?

        public var name: String

        public var modifiedBy: [String: Any]?

        public var subtitle: String?

        public var title: String

        public var active: Bool?

        public var image: String?

        public var createdBy: [String: Any]?

        public var createdOn: String?

        public var id: String?

        public var description: String?

        public var guide: Guide?

        public var brandId: Int?

        public var modifiedOn: String?

        public var tag: String?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case name

            case modifiedBy = "modified_by"

            case subtitle

            case title

            case active

            case image

            case createdBy = "created_by"

            case createdOn = "created_on"

            case id

            case description

            case guide

            case brandId = "brand_id"

            case modifiedOn = "modified_on"

            case tag
        }

        public init(active: Bool? = nil, brandId: Int? = nil, companyId: Int? = nil, createdBy: [String: Any]? = nil, createdOn: String? = nil, description: String? = nil, guide: Guide? = nil, id: String? = nil, image: String? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, subtitle: String? = nil, tag: String? = nil, title: String) {
            self.companyId = companyId

            self.name = name

            self.modifiedBy = modifiedBy

            self.subtitle = subtitle

            self.title = title

            self.active = active

            self.image = image

            self.createdBy = createdBy

            self.createdOn = createdOn

            self.id = id

            self.description = description

            self.guide = guide

            self.brandId = brandId

            self.modifiedOn = modifiedOn

            self.tag = tag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subtitle = try container.decode(String.self, forKey: .subtitle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            title = try container.decode(String.self, forKey: .title)

            do {
                active = try container.decode(Bool.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                image = try container.decode(String.self, forKey: .image)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

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

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                guide = try container.decode(Guide.self, forKey: .guide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandId = try container.decode(Int.self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tag = try container.decode(String.self, forKey: .tag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(guide, forKey: .guide)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(tag, forKey: .tag)
        }
    }
}