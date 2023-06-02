

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: SearchRerankingModel
         Used By: Catalog
     */

    class SearchRerankingModel: Codable {
        public var verifiedBy: UserDetail?

        public var isActive: Bool?

        public var id: [String: Any]?

        public var modifiedOn: String

        public var appId: String

        public var createdOn: String

        public var words: [String]

        public var modifiedBy: UserDetail?

        public var ranking: BoostBury?

        public var createdBy: UserDetail?

        public var verifiedOn: String?

        public enum CodingKeys: String, CodingKey {
            case verifiedBy = "verified_by"

            case isActive = "is_active"

            case id = "_id"

            case modifiedOn = "modified_on"

            case appId = "app_id"

            case createdOn = "created_on"

            case words

            case modifiedBy = "modified_by"

            case ranking

            case createdBy = "created_by"

            case verifiedOn = "verified_on"
        }

        public init(appId: String, createdBy: UserDetail? = nil, createdOn: String, isActive: Bool? = nil, modifiedBy: UserDetail? = nil, modifiedOn: String, ranking: BoostBury? = nil, verifiedBy: UserDetail? = nil, verifiedOn: String? = nil, words: [String], id: [String: Any]? = nil) {
            self.verifiedBy = verifiedBy

            self.isActive = isActive

            self.id = id

            self.modifiedOn = modifiedOn

            self.appId = appId

            self.createdOn = createdOn

            self.words = words

            self.modifiedBy = modifiedBy

            self.ranking = ranking

            self.createdBy = createdBy

            self.verifiedOn = verifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                verifiedBy = try container.decode(UserDetail.self, forKey: .verifiedBy)

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
                id = try container.decode([String: Any].self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            appId = try container.decode(String.self, forKey: .appId)

            createdOn = try container.decode(String.self, forKey: .createdOn)

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

            do {
                createdBy = try container.decode(UserDetail.self, forKey: .createdBy)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(ranking, forKey: .ranking)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: SearchRerankingModel
         Used By: Catalog
     */

    class SearchRerankingModel: Codable {
        public var verifiedBy: UserDetail?

        public var isActive: Bool?

        public var id: [String: Any]?

        public var modifiedOn: String

        public var appId: String

        public var createdOn: String

        public var words: [String]

        public var modifiedBy: UserDetail?

        public var ranking: BoostBury?

        public var createdBy: UserDetail?

        public var verifiedOn: String?

        public enum CodingKeys: String, CodingKey {
            case verifiedBy = "verified_by"

            case isActive = "is_active"

            case id = "_id"

            case modifiedOn = "modified_on"

            case appId = "app_id"

            case createdOn = "created_on"

            case words

            case modifiedBy = "modified_by"

            case ranking

            case createdBy = "created_by"

            case verifiedOn = "verified_on"
        }

        public init(appId: String, createdBy: UserDetail? = nil, createdOn: String, isActive: Bool? = nil, modifiedBy: UserDetail? = nil, modifiedOn: String, ranking: BoostBury? = nil, verifiedBy: UserDetail? = nil, verifiedOn: String? = nil, words: [String], id: [String: Any]? = nil) {
            self.verifiedBy = verifiedBy

            self.isActive = isActive

            self.id = id

            self.modifiedOn = modifiedOn

            self.appId = appId

            self.createdOn = createdOn

            self.words = words

            self.modifiedBy = modifiedBy

            self.ranking = ranking

            self.createdBy = createdBy

            self.verifiedOn = verifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                verifiedBy = try container.decode(UserDetail.self, forKey: .verifiedBy)

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
                id = try container.decode([String: Any].self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            appId = try container.decode(String.self, forKey: .appId)

            createdOn = try container.decode(String.self, forKey: .createdOn)

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

            do {
                createdBy = try container.decode(UserDetail.self, forKey: .createdBy)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(ranking, forKey: .ranking)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
        }
    }
}
