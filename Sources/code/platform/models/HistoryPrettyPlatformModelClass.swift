

import Foundation
public extension PlatformClient {
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

        public init(applicationId: String? = nil, claimed: Bool? = nil, createdAt: String? = nil, expiresOn: String? = nil, points: Double? = nil, remainingPoints: Double? = nil, text1: String? = nil, text2: String? = nil, text3: String? = nil, txnName: String? = nil, updatedAt: String? = nil, userId: String? = nil, id: String? = nil) {
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
}
