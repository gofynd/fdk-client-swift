

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: CreateSearchReranking
         Used By: Catalog
     */

    class CreateSearchReranking: Codable {
        public var words: [String]

        public var modifiedBy: [String: Any]?

        public var ranking: BoostBury1?

        public var modifiedOn: String?

        public var createdOn: String?

        public var isActive: Bool?

        public var createdBy: [String: Any]?

        public var appId: String?

        public enum CodingKeys: String, CodingKey {
            case words

            case modifiedBy = "modified_by"

            case ranking

            case modifiedOn = "modified_on"

            case createdOn = "created_on"

            case isActive = "is_active"

            case createdBy = "created_by"

            case appId = "app_id"
        }

        public init(appId: String? = nil, createdBy: [String: Any]? = nil, createdOn: String? = nil, isActive: Bool? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, ranking: BoostBury1? = nil, words: [String]) {
            self.words = words

            self.modifiedBy = modifiedBy

            self.ranking = ranking

            self.modifiedOn = modifiedOn

            self.createdOn = createdOn

            self.isActive = isActive

            self.createdBy = createdBy

            self.appId = appId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            words = try container.decode([String].self, forKey: .words)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ranking = try container.decode(BoostBury1.self, forKey: .ranking)

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
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                appId = try container.decode(String.self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(ranking, forKey: .ranking)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: CreateSearchReranking
         Used By: Catalog
     */

    class CreateSearchReranking: Codable {
        public var words: [String]

        public var modifiedBy: [String: Any]?

        public var ranking: BoostBury1?

        public var modifiedOn: String?

        public var createdOn: String?

        public var isActive: Bool?

        public var createdBy: [String: Any]?

        public var appId: String?

        public enum CodingKeys: String, CodingKey {
            case words

            case modifiedBy = "modified_by"

            case ranking

            case modifiedOn = "modified_on"

            case createdOn = "created_on"

            case isActive = "is_active"

            case createdBy = "created_by"

            case appId = "app_id"
        }

        public init(appId: String? = nil, createdBy: [String: Any]? = nil, createdOn: String? = nil, isActive: Bool? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, ranking: BoostBury1? = nil, words: [String]) {
            self.words = words

            self.modifiedBy = modifiedBy

            self.ranking = ranking

            self.modifiedOn = modifiedOn

            self.createdOn = createdOn

            self.isActive = isActive

            self.createdBy = createdBy

            self.appId = appId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            words = try container.decode([String].self, forKey: .words)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ranking = try container.decode(BoostBury1.self, forKey: .ranking)

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
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                appId = try container.decode(String.self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(ranking, forKey: .ranking)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }
}
