import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ActivityDump
         Used By: Feedback
     */

    class ActivityDump: Codable {
        public var activity: Activity?

        public var createdBy: CreatedBy?

        public var dateMeta: DateMeta?

        public var id: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case activity

            case createdBy = "created_by"

            case dateMeta = "date_meta"

            case id

            case type
        }

        public init(activity: Activity?, createdBy: CreatedBy?, dateMeta: DateMeta?, id: String?, type: String?) {
            self.activity = activity

            self.createdBy = createdBy

            self.dateMeta = dateMeta

            self.id = id

            self.type = type
        }

        public func duplicate() -> ActivityDump {
            let dict = self.dictionary!
            let copy = ActivityDump(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                activity = try container.decode(Activity.self, forKey: .activity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(CreatedBy.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dateMeta = try container.decode(DateMeta.self, forKey: .dateMeta)

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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(activity, forKey: .activity)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
