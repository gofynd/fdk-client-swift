

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: SearchRerankingModel
         Used By: Catalog
     */

    class SearchRerankingModel: Codable {
        public var verifiedOn: String?

        public var verifiedBy: UserDetail?

        public var words: [String]

        public var modifiedBy: UserDetail?

        public var ranking: BoostBury?

        public var modifiedOn: String

        public var createdOn: String

        public var id: [String: Any]?

        public var isActive: Bool?

        public var createdBy: UserDetail?

        public var appId: String

        public enum CodingKeys: String, CodingKey {
            case verifiedOn = "verified_on"

            case verifiedBy = "verified_by"

            case words

            case modifiedBy = "modified_by"

            case ranking

            case modifiedOn = "modified_on"

            case createdOn = "created_on"

            case id = "_id"

            case isActive = "is_active"

            case createdBy = "created_by"

            case appId = "app_id"
        }

        public init(appId: String, createdBy: UserDetail? = nil, createdOn: String, isActive: Bool? = nil, modifiedBy: UserDetail? = nil, modifiedOn: String, ranking: BoostBury? = nil, verifiedBy: UserDetail? = nil, verifiedOn: String? = nil, words: [String], id: [String: Any]? = nil) {
            self.verifiedOn = verifiedOn

            self.verifiedBy = verifiedBy

            self.words = words

            self.modifiedBy = modifiedBy

            self.ranking = ranking

            self.modifiedOn = modifiedOn

            self.createdOn = createdOn

            self.id = id

            self.isActive = isActive

            self.createdBy = createdBy

            self.appId = appId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                verifiedOn = try container.decode(String.self, forKey: .verifiedOn)

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

            words = try container.decode([String].self, forKey: .words)

            do {
                modifiedBy = try container.decode(UserDetail.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ranking = try container.decode(BoostBury.self, forKey: .ranking)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                id = try container.decode([String: Any].self, forKey: .id)

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
                createdBy = try container.decode(UserDetail.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(ranking, forKey: .ranking)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: SearchRerankingModel
         Used By: Catalog
     */

    class SearchRerankingModel: Codable {
        public var verifiedOn: String?

        public var verifiedBy: UserDetail?

        public var words: [String]

        public var modifiedBy: UserDetail?

        public var ranking: BoostBury?

        public var modifiedOn: String

        public var createdOn: String

        public var id: [String: Any]?

        public var isActive: Bool?

        public var createdBy: UserDetail?

        public var appId: String

        public enum CodingKeys: String, CodingKey {
            case verifiedOn = "verified_on"

            case verifiedBy = "verified_by"

            case words

            case modifiedBy = "modified_by"

            case ranking

            case modifiedOn = "modified_on"

            case createdOn = "created_on"

            case id = "_id"

            case isActive = "is_active"

            case createdBy = "created_by"

            case appId = "app_id"
        }

        public init(appId: String, createdBy: UserDetail? = nil, createdOn: String, isActive: Bool? = nil, modifiedBy: UserDetail? = nil, modifiedOn: String, ranking: BoostBury? = nil, verifiedBy: UserDetail? = nil, verifiedOn: String? = nil, words: [String], id: [String: Any]? = nil) {
            self.verifiedOn = verifiedOn

            self.verifiedBy = verifiedBy

            self.words = words

            self.modifiedBy = modifiedBy

            self.ranking = ranking

            self.modifiedOn = modifiedOn

            self.createdOn = createdOn

            self.id = id

            self.isActive = isActive

            self.createdBy = createdBy

            self.appId = appId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                verifiedOn = try container.decode(String.self, forKey: .verifiedOn)

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

            words = try container.decode([String].self, forKey: .words)

            do {
                modifiedBy = try container.decode(UserDetail.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ranking = try container.decode(BoostBury.self, forKey: .ranking)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                id = try container.decode([String: Any].self, forKey: .id)

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
                createdBy = try container.decode(UserDetail.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(ranking, forKey: .ranking)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }
}
