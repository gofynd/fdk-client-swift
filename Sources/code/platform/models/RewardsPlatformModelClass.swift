import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: AppUser
         Used By: Rewards
     */

    class AppUser: Codable {
        public var id: String?

        public var active: Bool?

        public var applicationId: String?

        public var blockReason: String?

        public var updatedAt: String?

        public var updatedBy: String?

        public var userId: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case active

            case applicationId = "application_id"

            case blockReason = "block_reason"

            case updatedAt = "updated_at"

            case updatedBy = "updated_by"

            case userId = "user_id"
        }

        public init(active: Bool?, applicationId: String?, blockReason: String?, updatedAt: String?, updatedBy: String?, userId: String?, id: String?) {
            self.id = id

            self.active = active

            self.applicationId = applicationId

            self.blockReason = blockReason

            self.updatedAt = updatedAt

            self.updatedBy = updatedBy

            self.userId = userId
        }

        public func duplicate() -> AppUser {
            let dict = self.dictionary!
            let copy = AppUser(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                active = try container.decode(Bool.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                applicationId = try container.decode(String.self, forKey: .applicationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                blockReason = try container.decode(String.self, forKey: .blockReason)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedBy = try container.decode(String.self, forKey: .updatedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(blockReason, forKey: .blockReason)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(updatedBy, forKey: .updatedBy)

            try? container.encodeIfPresent(userId, forKey: .userId)
        }
    }

    /*
         Model: E
         Used By: Rewards
     */

    class E: Codable {
        public var code: [String: Any]?

        public var exception: String?

        public var info: String?

        public var message: String?

        public var requestId: String?

        public var stackTrace: String?

        public var status: Int?

        public enum CodingKeys: String, CodingKey {
            case code

            case exception

            case info

            case message

            case requestId = "request_id"

            case stackTrace = "stack_trace"

            case status
        }

        public init(code: [String: Any]?, exception: String?, info: String?, message: String?, requestId: String?, stackTrace: String?, status: Int?) {
            self.code = code

            self.exception = exception

            self.info = info

            self.message = message

            self.requestId = requestId

            self.stackTrace = stackTrace

            self.status = status
        }

        public func duplicate() -> E {
            let dict = self.dictionary!
            let copy = E(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                code = try container.decode([String: Any].self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                exception = try container.decode(String.self, forKey: .exception)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                info = try container.decode(String.self, forKey: .info)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requestId = try container.decode(String.self, forKey: .requestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stackTrace = try container.decode(String.self, forKey: .stackTrace)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(Int.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(exception, forKey: .exception)

            try? container.encodeIfPresent(info, forKey: .info)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(stackTrace, forKey: .stackTrace)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }

    /*
         Model: Giveaway
         Used By: Rewards
     */

    class Giveaway: Codable {
        public var id: String?

        public var schedule: Schedule?

        public var active: Bool?

        public var applicationId: String?

        public var audience: RewardsAudience?

        public var bannerImage: Asset?

        public var createdAt: String?

        public var description: String?

        public var name: String?

        public var rule: RewardsRule?

        public var title: String?

        public var updatedAt: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case schedule = "_schedule"

            case active

            case applicationId = "application_id"

            case audience

            case bannerImage = "banner_image"

            case createdAt = "created_at"

            case description

            case name

            case rule

            case title

            case updatedAt = "updated_at"
        }

        public init(active: Bool?, applicationId: String?, audience: RewardsAudience?, bannerImage: Asset?, createdAt: String?, description: String?, name: String?, rule: RewardsRule?, title: String?, updatedAt: String?, id: String?, schedule: Schedule?) {
            self.id = id

            self.schedule = schedule

            self.active = active

            self.applicationId = applicationId

            self.audience = audience

            self.bannerImage = bannerImage

            self.createdAt = createdAt

            self.description = description

            self.name = name

            self.rule = rule

            self.title = title

            self.updatedAt = updatedAt
        }

        public func duplicate() -> Giveaway {
            let dict = self.dictionary!
            let copy = Giveaway(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode(Schedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                active = try container.decode(Bool.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                applicationId = try container.decode(String.self, forKey: .applicationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                audience = try container.decode(RewardsAudience.self, forKey: .audience)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bannerImage = try container.decode(Asset.self, forKey: .bannerImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

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
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rule = try container.decode(RewardsRule.self, forKey: .rule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(audience, forKey: .audience)

            try? container.encodeIfPresent(bannerImage, forKey: .bannerImage)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        }
    }

    /*
         Model: GiveawayResponse
         Used By: Rewards
     */

    class GiveawayResponse: Codable {
        public var items: [Giveaway]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [Giveaway]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> GiveawayResponse {
            let dict = self.dictionary!
            let copy = GiveawayResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([Giveaway].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: HistoryPretty
         Used By: Rewards
     */

    class HistoryPretty: Codable {
        public var id: String?

        public var applicationId: String?

        public var claimed: Bool?

        public var createdAt: String?

        public var expiresOn: String?

        public var points: Double?

        public var remainingPoints: Double?

        public var text1: String?

        public var text2: String?

        public var text3: String?

        public var txnName: String?

        public var updatedAt: String?

        public var userId: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case applicationId = "application_id"

            case claimed

            case createdAt = "created_at"

            case expiresOn = "expires_on"

            case points

            case remainingPoints = "remaining_points"

            case text1 = "text_1"

            case text2 = "text_2"

            case text3 = "text_3"

            case txnName = "txn_name"

            case updatedAt = "updated_at"

            case userId = "user_id"
        }

        public init(applicationId: String?, claimed: Bool?, createdAt: String?, expiresOn: String?, points: Double?, remainingPoints: Double?, text1: String?, text2: String?, text3: String?, txnName: String?, updatedAt: String?, userId: String?, id: String?) {
            self.id = id

            self.applicationId = applicationId

            self.claimed = claimed

            self.createdAt = createdAt

            self.expiresOn = expiresOn

            self.points = points

            self.remainingPoints = remainingPoints

            self.text1 = text1

            self.text2 = text2

            self.text3 = text3

            self.txnName = txnName

            self.updatedAt = updatedAt

            self.userId = userId
        }

        public func duplicate() -> HistoryPretty {
            let dict = self.dictionary!
            let copy = HistoryPretty(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                applicationId = try container.decode(String.self, forKey: .applicationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                claimed = try container.decode(Bool.self, forKey: .claimed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expiresOn = try container.decode(String.self, forKey: .expiresOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                points = try container.decode(Double.self, forKey: .points)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                remainingPoints = try container.decode(Double.self, forKey: .remainingPoints)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                text1 = try container.decode(String.self, forKey: .text1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                text2 = try container.decode(String.self, forKey: .text2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                text3 = try container.decode(String.self, forKey: .text3)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                txnName = try container.decode(String.self, forKey: .txnName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(claimed, forKey: .claimed)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(expiresOn, forKey: .expiresOn)

            try? container.encodeIfPresent(points, forKey: .points)

            try? container.encodeIfPresent(remainingPoints, forKey: .remainingPoints)

            try? container.encodeIfPresent(text1, forKey: .text1)

            try? container.encodeIfPresent(text2, forKey: .text2)

            try? container.encodeIfPresent(text3, forKey: .text3)

            try? container.encodeIfPresent(txnName, forKey: .txnName)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(userId, forKey: .userId)
        }
    }

    /*
         Model: HistoryRes
         Used By: Rewards
     */

    class HistoryRes: Codable {
        public var items: [HistoryPretty]?

        public var page: Page?

        public var points: Double?

        public enum CodingKeys: String, CodingKey {
            case items

            case page

            case points
        }

        public init(items: [HistoryPretty]?, page: Page?, points: Double?) {
            self.items = items

            self.page = page

            self.points = points
        }

        public func duplicate() -> HistoryRes {
            let dict = self.dictionary!
            let copy = HistoryRes(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([HistoryPretty].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                points = try container.decode(Double.self, forKey: .points)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(points, forKey: .points)
        }
    }

    /*
         Model: Offer
         Used By: Rewards
     */

    class Offer: Codable {
        public var schedule: Schedule?

        public var active: Bool?

        public var applicationId: String?

        public var bannerImage: Asset?

        public var createdAt: String?

        public var name: String?

        public var rule: [String: Any]?

        public var share: ShareMessages?

        public var subText: String?

        public var text: String?

        public var type: String?

        public var updatedAt: String?

        public var updatedBy: String?

        public var url: String?

        public enum CodingKeys: String, CodingKey {
            case schedule = "_schedule"

            case active

            case applicationId = "application_id"

            case bannerImage = "banner_image"

            case createdAt = "created_at"

            case name

            case rule

            case share

            case subText = "sub_text"

            case text

            case type

            case updatedAt = "updated_at"

            case updatedBy = "updated_by"

            case url
        }

        public init(active: Bool?, applicationId: String?, bannerImage: Asset?, createdAt: String?, name: String?, rule: [String: Any]?, share: ShareMessages?, subText: String?, text: String?, type: String?, updatedAt: String?, updatedBy: String?, url: String?, schedule: Schedule?) {
            self.schedule = schedule

            self.active = active

            self.applicationId = applicationId

            self.bannerImage = bannerImage

            self.createdAt = createdAt

            self.name = name

            self.rule = rule

            self.share = share

            self.subText = subText

            self.text = text

            self.type = type

            self.updatedAt = updatedAt

            self.updatedBy = updatedBy

            self.url = url
        }

        public func duplicate() -> Offer {
            let dict = self.dictionary!
            let copy = Offer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                schedule = try container.decode(Schedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                active = try container.decode(Bool.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                applicationId = try container.decode(String.self, forKey: .applicationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bannerImage = try container.decode(Asset.self, forKey: .bannerImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

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
                rule = try container.decode([String: Any].self, forKey: .rule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                share = try container.decode(ShareMessages.self, forKey: .share)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subText = try container.decode(String.self, forKey: .subText)

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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedBy = try container.decode(String.self, forKey: .updatedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(bannerImage, forKey: .bannerImage)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(share, forKey: .share)

            try? container.encodeIfPresent(subText, forKey: .subText)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(updatedBy, forKey: .updatedBy)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }

    /*
         Model: Points
         Used By: Rewards
     */

    class Points: Codable {
        public var available: Double?

        public enum CodingKeys: String, CodingKey {
            case available
        }

        public init(available: Double?) {
            self.available = available
        }

        public func duplicate() -> Points {
            let dict = self.dictionary!
            let copy = Points(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                available = try container.decode(Double.self, forKey: .available)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(available, forKey: .available)
        }
    }

    /*
         Model: Referral
         Used By: Rewards
     */

    class Referral: Codable {
        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case code
        }

        public init(code: String?) {
            self.code = code
        }

        public func duplicate() -> Referral {
            let dict = self.dictionary!
            let copy = Referral(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }

    /*
         Model: RewardUser
         Used By: Rewards
     */

    class RewardUser: Codable {
        public var id: String?

        public var active: Bool?

        public var createdAt: String?

        public var referral: Referral?

        public var uid: Int?

        public var updatedAt: String?

        public var userBlockReason: String?

        public var userId: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case active

            case createdAt = "created_at"

            case referral

            case uid

            case updatedAt = "updated_at"

            case userBlockReason = "user_block_reason"

            case userId = "user_id"
        }

        public init(active: Bool?, createdAt: String?, referral: Referral?, uid: Int?, updatedAt: String?, userBlockReason: String?, userId: String?, id: String?) {
            self.id = id

            self.active = active

            self.createdAt = createdAt

            self.referral = referral

            self.uid = uid

            self.updatedAt = updatedAt

            self.userBlockReason = userBlockReason

            self.userId = userId
        }

        public func duplicate() -> RewardUser {
            let dict = self.dictionary!
            let copy = RewardUser(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                active = try container.decode(Bool.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                referral = try container.decode(Referral.self, forKey: .referral)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userBlockReason = try container.decode(String.self, forKey: .userBlockReason)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(referral, forKey: .referral)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(userBlockReason, forKey: .userBlockReason)

            try? container.encodeIfPresent(userId, forKey: .userId)
        }
    }

    /*
         Model: RewardsAudience
         Used By: Rewards
     */

    class RewardsAudience: Codable {
        public var headerUserId: String?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case headerUserId = "header_user_id"

            case id
        }

        public init(headerUserId: String?, id: String?) {
            self.headerUserId = headerUserId

            self.id = id
        }

        public func duplicate() -> RewardsAudience {
            let dict = self.dictionary!
            let copy = RewardsAudience(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                headerUserId = try container.decode(String.self, forKey: .headerUserId)

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

            try? container.encodeIfPresent(headerUserId, forKey: .headerUserId)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }

    /*
         Model: RewardsRule
         Used By: Rewards
     */

    class RewardsRule: Codable {
        public var amount: Double?

        public enum CodingKeys: String, CodingKey {
            case amount
        }

        public init(amount: Double?) {
            self.amount = amount
        }

        public func duplicate() -> RewardsRule {
            let dict = self.dictionary!
            let copy = RewardsRule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                amount = try container.decode(Double.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amount, forKey: .amount)
        }
    }

    /*
         Model: ShareMessages
         Used By: Rewards
     */

    class ShareMessages: Codable {
        public var email: String?

        public var facebook: String?

        public var fallback: String?

        public var message: String?

        public var messenger: String?

        public var sms: String?

        public var text: String?

        public var twitter: String?

        public var whatsapp: String?

        public enum CodingKeys: String, CodingKey {
            case email

            case facebook

            case fallback

            case message

            case messenger

            case sms

            case text

            case twitter

            case whatsapp
        }

        public init(email: String?, facebook: String?, fallback: String?, message: String?, messenger: String?, sms: String?, text: String?, twitter: String?, whatsapp: String?) {
            self.email = email

            self.facebook = facebook

            self.fallback = fallback

            self.message = message

            self.messenger = messenger

            self.sms = sms

            self.text = text

            self.twitter = twitter

            self.whatsapp = whatsapp
        }

        public func duplicate() -> ShareMessages {
            let dict = self.dictionary!
            let copy = ShareMessages(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                facebook = try container.decode(String.self, forKey: .facebook)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fallback = try container.decode(String.self, forKey: .fallback)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                messenger = try container.decode(String.self, forKey: .messenger)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sms = try container.decode(String.self, forKey: .sms)

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
                twitter = try container.decode(String.self, forKey: .twitter)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                whatsapp = try container.decode(String.self, forKey: .whatsapp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(facebook, forKey: .facebook)

            try? container.encodeIfPresent(fallback, forKey: .fallback)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(messenger, forKey: .messenger)

            try? container.encodeIfPresent(sms, forKey: .sms)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(twitter, forKey: .twitter)

            try? container.encodeIfPresent(whatsapp, forKey: .whatsapp)
        }
    }

    /*
         Model: UserRes
         Used By: Rewards
     */

    class UserRes: Codable {
        public var points: Points?

        public var user: RewardUser?

        public enum CodingKeys: String, CodingKey {
            case points

            case user
        }

        public init(points: Points?, user: RewardUser?) {
            self.points = points

            self.user = user
        }

        public func duplicate() -> UserRes {
            let dict = self.dictionary!
            let copy = UserRes(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                points = try container.decode(Points.self, forKey: .points)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                user = try container.decode(RewardUser.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(points, forKey: .points)

            try? container.encodeIfPresent(user, forKey: .user)
        }
    }
}
