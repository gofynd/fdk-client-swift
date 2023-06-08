

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: SearchRerankingModel
         Used By: Catalog
     */

    class SearchRerankingModel: Codable {
        public var id: [String: Any]?

        public var verifiedOn: String?

        public var createdBy: UserDetail?

        public var appId: String

        public var modifiedOn: String

        public var words: [String]

        public var modifiedBy: UserDetail?

        public var createdOn: String

        public var isActive: Bool?

        public var verifiedBy: UserDetail?

        public var ranking: BoostBury1?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case verifiedOn = "verified_on"

            case createdBy = "created_by"

            case appId = "app_id"

            case modifiedOn = "modified_on"

            case words

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case isActive = "is_active"

            case verifiedBy = "verified_by"

            case ranking
        }

        public init(appId: String, createdBy: UserDetail? = nil, createdOn: String, isActive: Bool? = nil, modifiedBy: UserDetail? = nil, modifiedOn: String, ranking: BoostBury1? = nil, verifiedBy: UserDetail? = nil, verifiedOn: String? = nil, words: [String], id: [String: Any]? = nil) {
            self.id = id

            self.verifiedOn = verifiedOn

            self.createdBy = createdBy

            self.appId = appId

            self.modifiedOn = modifiedOn

            self.words = words

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.isActive = isActive

            self.verifiedBy = verifiedBy

            self.ranking = ranking
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode([String: Any].self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifiedOn = try container.decode(String.self, forKey: .verifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserDetail.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            words = try container.decode([String].self, forKey: .words)

            do {
                modifiedBy = try container.decode(UserDetail.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifiedBy = try container.decode(UserDetail.self, forKey: .verifiedBy)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(ranking, forKey: .ranking)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: SearchRerankingModel
         Used By: Catalog
     */

    class SearchRerankingModel: Codable {
        public var id: [String: Any]?

        public var verifiedOn: String?

        public var createdBy: UserDetail?

        public var appId: String

        public var modifiedOn: String

        public var words: [String]

        public var modifiedBy: UserDetail?

        public var createdOn: String

        public var isActive: Bool?

        public var verifiedBy: UserDetail?

        public var ranking: BoostBury1?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case verifiedOn = "verified_on"

            case createdBy = "created_by"

            case appId = "app_id"

            case modifiedOn = "modified_on"

            case words

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case isActive = "is_active"

            case verifiedBy = "verified_by"

            case ranking
        }

        public init(appId: String, createdBy: UserDetail? = nil, createdOn: String, isActive: Bool? = nil, modifiedBy: UserDetail? = nil, modifiedOn: String, ranking: BoostBury1? = nil, verifiedBy: UserDetail? = nil, verifiedOn: String? = nil, words: [String], id: [String: Any]? = nil) {
            self.id = id

            self.verifiedOn = verifiedOn

            self.createdBy = createdBy

            self.appId = appId

            self.modifiedOn = modifiedOn

            self.words = words

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.isActive = isActive

            self.verifiedBy = verifiedBy

            self.ranking = ranking
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode([String: Any].self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifiedOn = try container.decode(String.self, forKey: .verifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserDetail.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            words = try container.decode([String].self, forKey: .words)

            do {
                modifiedBy = try container.decode(UserDetail.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifiedBy = try container.decode(UserDetail.self, forKey: .verifiedBy)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(ranking, forKey: .ranking)
        }
    }
}
