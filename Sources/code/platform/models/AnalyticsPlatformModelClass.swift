import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: StatGroup
         Used By: Analytics
     */

    class StatGroup: Codable {
        public var key: String?

        public var url: String?

        public var title: String?

        public enum CodingKeys: String, CodingKey {
            case key

            case url

            case title
        }

        public init(key: String?, title: String?, url: String?) {
            self.key = key

            self.url = url

            self.title = title
        }

        public func duplicate() -> StatGroup {
            let dict = self.dictionary!
            let copy = StatGroup(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                key = try container.decode(String.self, forKey: .key)

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

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }

    /*
         Model: StatsGroups
         Used By: Analytics
     */

    class StatsGroups: Codable {
        public var groups: [StatGroup]?

        public enum CodingKeys: String, CodingKey {
            case groups
        }

        public init(groups: [StatGroup]?) {
            self.groups = groups
        }

        public func duplicate() -> StatsGroups {
            let dict = self.dictionary!
            let copy = StatsGroups(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                groups = try container.decode([StatGroup].self, forKey: .groups)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(groups, forKey: .groups)
        }
    }

    /*
         Model: StatsGroupComponent
         Used By: Analytics
     */

    class StatsGroupComponent: Codable {
        public var key: String?

        public var url: String?

        public var title: String?

        public var type: String?

        public var filters: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case key

            case url

            case title

            case type

            case filters
        }

        public init(filters: [String: Any]?, key: String?, title: String?, type: String?, url: String?) {
            self.key = key

            self.url = url

            self.title = title

            self.type = type

            self.filters = filters
        }

        public func duplicate() -> StatsGroupComponent {
            let dict = self.dictionary!
            let copy = StatsGroupComponent(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                key = try container.decode(String.self, forKey: .key)

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

            do {
                title = try container.decode(String.self, forKey: .title)

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
                filters = try container.decode([String: Any].self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(filters, forKey: .filters)
        }
    }

    /*
         Model: StatsGroupComponents
         Used By: Analytics
     */

    class StatsGroupComponents: Codable {
        public var title: String?

        public var components: [StatsGroupComponent]?

        public enum CodingKeys: String, CodingKey {
            case title

            case components
        }

        public init(components: [StatsGroupComponent]?, title: String?) {
            self.title = title

            self.components = components
        }

        public func duplicate() -> StatsGroupComponents {
            let dict = self.dictionary!
            let copy = StatsGroupComponents(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                components = try container.decode([StatsGroupComponent].self, forKey: .components)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(components, forKey: .components)
        }
    }

    /*
         Model: StatsRes
         Used By: Analytics
     */

    class StatsRes: Codable {
        public var key: String?

        public var title: String?

        public var type: String?

        public var data: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case key

            case title

            case type

            case data
        }

        public init(data: [String: Any]?, key: String?, title: String?, type: String?) {
            self.key = key

            self.title = title

            self.type = type

            self.data = data
        }

        public func duplicate() -> StatsRes {
            let dict = self.dictionary!
            let copy = StatsRes(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                key = try container.decode(String.self, forKey: .key)

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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode([String: Any].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: ReceivedAt
         Used By: Analytics
     */

    class ReceivedAt: Codable {
        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case value
        }

        public init(value: String?) {
            self.value = value
        }

        public func duplicate() -> ReceivedAt {
            let dict = self.dictionary!
            let copy = ReceivedAt(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }

    /*
         Model: AbandonCartsDetail
         Used By: Analytics
     */

    class AbandonCartsDetail: Codable {
        public var propertiesCartId: String?

        public var contextTraitsFirstName: String?

        public var contextTraitsLastName: String?

        public var contextTraitsPhoneNumber: String?

        public var contextTraitsEmail: String?

        public var contextAppApplicationId: String?

        public var propertiesBreakupValuesRawTotal: String?

        public var receivedAt: ReceivedAt?

        public enum CodingKeys: String, CodingKey {
            case propertiesCartId = "properties_cart_id"

            case contextTraitsFirstName = "context_traits_first_name"

            case contextTraitsLastName = "context_traits_last_name"

            case contextTraitsPhoneNumber = "context_traits_phone_number"

            case contextTraitsEmail = "context_traits_email"

            case contextAppApplicationId = "context_app_application_id"

            case propertiesBreakupValuesRawTotal = "properties_breakup_values_raw_total"

            case receivedAt = "received_at"
        }

        public init(contextAppApplicationId: String?, contextTraitsEmail: String?, contextTraitsFirstName: String?, contextTraitsLastName: String?, contextTraitsPhoneNumber: String?, propertiesBreakupValuesRawTotal: String?, propertiesCartId: String?, receivedAt: ReceivedAt?) {
            self.propertiesCartId = propertiesCartId

            self.contextTraitsFirstName = contextTraitsFirstName

            self.contextTraitsLastName = contextTraitsLastName

            self.contextTraitsPhoneNumber = contextTraitsPhoneNumber

            self.contextTraitsEmail = contextTraitsEmail

            self.contextAppApplicationId = contextAppApplicationId

            self.propertiesBreakupValuesRawTotal = propertiesBreakupValuesRawTotal

            self.receivedAt = receivedAt
        }

        public func duplicate() -> AbandonCartsDetail {
            let dict = self.dictionary!
            let copy = AbandonCartsDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                propertiesCartId = try container.decode(String.self, forKey: .propertiesCartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contextTraitsFirstName = try container.decode(String.self, forKey: .contextTraitsFirstName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contextTraitsLastName = try container.decode(String.self, forKey: .contextTraitsLastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contextTraitsPhoneNumber = try container.decode(String.self, forKey: .contextTraitsPhoneNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contextTraitsEmail = try container.decode(String.self, forKey: .contextTraitsEmail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contextAppApplicationId = try container.decode(String.self, forKey: .contextAppApplicationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                propertiesBreakupValuesRawTotal = try container.decode(String.self, forKey: .propertiesBreakupValuesRawTotal)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                receivedAt = try container.decode(ReceivedAt.self, forKey: .receivedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(propertiesCartId, forKey: .propertiesCartId)

            try? container.encodeIfPresent(contextTraitsFirstName, forKey: .contextTraitsFirstName)

            try? container.encodeIfPresent(contextTraitsLastName, forKey: .contextTraitsLastName)

            try? container.encodeIfPresent(contextTraitsPhoneNumber, forKey: .contextTraitsPhoneNumber)

            try? container.encodeIfPresent(contextTraitsEmail, forKey: .contextTraitsEmail)

            try? container.encodeIfPresent(contextAppApplicationId, forKey: .contextAppApplicationId)

            try? container.encodeIfPresent(propertiesBreakupValuesRawTotal, forKey: .propertiesBreakupValuesRawTotal)

            try? container.encodeIfPresent(receivedAt, forKey: .receivedAt)
        }
    }

    /*
         Model: AbandonCartsList
         Used By: Analytics
     */

    class AbandonCartsList: Codable {
        public var items: [AbandonCartsDetail]?

        public var cartTotal: String?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case cartTotal = "cart_total"

            case page
        }

        public init(cartTotal: String?, items: [AbandonCartsDetail]?, page: Page?) {
            self.items = items

            self.cartTotal = cartTotal

            self.page = page
        }

        public func duplicate() -> AbandonCartsList {
            let dict = self.dictionary!
            let copy = AbandonCartsList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([AbandonCartsDetail].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartTotal = try container.decode(String.self, forKey: .cartTotal)

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

            try? container.encodeIfPresent(cartTotal, forKey: .cartTotal)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: AbandonCartDetail
         Used By: Analytics
     */

    class AbandonCartDetail: Codable {
        public var id: String?

        public var userId: String?

        public var cartValue: String?

        public var articles: [[String: Any]]?

        public var breakup: [String: Any]?

        public var address: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case userId = "user_id"

            case cartValue = "cart_value"

            case articles

            case breakup

            case address
        }

        public init(address: [String: Any]?, articles: [[String: Any]]?, breakup: [String: Any]?, cartValue: String?, userId: String?, id: String?) {
            self.id = id

            self.userId = userId

            self.cartValue = cartValue

            self.articles = articles

            self.breakup = breakup

            self.address = address
        }

        public func duplicate() -> AbandonCartDetail {
            let dict = self.dictionary!
            let copy = AbandonCartDetail(dictionary: dict)!
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
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartValue = try container.decode(String.self, forKey: .cartValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articles = try container.decode([[String: Any]].self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                breakup = try container.decode([String: Any].self, forKey: .breakup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address = try container.decode([String: Any].self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(breakup, forKey: .breakup)

            try? container.encodeIfPresent(address, forKey: .address)
        }
    }

    /*
         Model: ExportJobReq
         Used By: Analytics
     */

    class ExportJobReq: Codable {
        public var marketplaceName: String?

        public var startTime: String?

        public var endTime: String?

        public var eventType: String?

        public var traceId: String?

        public enum CodingKeys: String, CodingKey {
            case marketplaceName = "marketplace_name"

            case startTime = "start_time"

            case endTime = "end_time"

            case eventType = "event_type"

            case traceId = "trace_id"
        }

        public init(endTime: String?, eventType: String?, marketplaceName: String?, startTime: String?, traceId: String?) {
            self.marketplaceName = marketplaceName

            self.startTime = startTime

            self.endTime = endTime

            self.eventType = eventType

            self.traceId = traceId
        }

        public func duplicate() -> ExportJobReq {
            let dict = self.dictionary!
            let copy = ExportJobReq(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                marketplaceName = try container.decode(String.self, forKey: .marketplaceName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                startTime = try container.decode(String.self, forKey: .startTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                endTime = try container.decode(String.self, forKey: .endTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eventType = try container.decode(String.self, forKey: .eventType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(marketplaceName, forKey: .marketplaceName)

            try? container.encodeIfPresent(startTime, forKey: .startTime)

            try? container.encodeIfPresent(endTime, forKey: .endTime)

            try? container.encodeIfPresent(eventType, forKey: .eventType)

            try? container.encodeIfPresent(traceId, forKey: .traceId)
        }
    }

    /*
         Model: ExportJobRes
         Used By: Analytics
     */

    class ExportJobRes: Codable {
        public var status: String?

        public var jobId: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case jobId = "job_id"
        }

        public init(jobId: String?, status: String?) {
            self.status = status

            self.jobId = jobId
        }

        public func duplicate() -> ExportJobRes {
            let dict = self.dictionary!
            let copy = ExportJobRes(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                jobId = try container.decode(String.self, forKey: .jobId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(jobId, forKey: .jobId)
        }
    }

    /*
         Model: ExportJobStatusRes
         Used By: Analytics
     */

    class ExportJobStatusRes: Codable {
        public var status: String?

        public var jobId: String?

        public var downloadUrl: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case jobId = "job_id"

            case downloadUrl = "download_url"
        }

        public init(downloadUrl: String?, jobId: String?, status: String?) {
            self.status = status

            self.jobId = jobId

            self.downloadUrl = downloadUrl
        }

        public func duplicate() -> ExportJobStatusRes {
            let dict = self.dictionary!
            let copy = ExportJobStatusRes(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                jobId = try container.decode(String.self, forKey: .jobId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                downloadUrl = try container.decode(String.self, forKey: .downloadUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(jobId, forKey: .jobId)

            try? container.encodeIfPresent(downloadUrl, forKey: .downloadUrl)
        }
    }

    /*
         Model: GetLogsListReq
         Used By: Analytics
     */

    class GetLogsListReq: Codable {
        public var marketplaceName: String?

        public var startDate: String?

        public var companyId: String?

        public var endDate: String?

        public enum CodingKeys: String, CodingKey {
            case marketplaceName = "marketplace_name"

            case startDate = "start_date"

            case companyId = "company_id"

            case endDate = "end_date"
        }

        public init(companyId: String?, endDate: String?, marketplaceName: String?, startDate: String?) {
            self.marketplaceName = marketplaceName

            self.startDate = startDate

            self.companyId = companyId

            self.endDate = endDate
        }

        public func duplicate() -> GetLogsListReq {
            let dict = self.dictionary!
            let copy = GetLogsListReq(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                marketplaceName = try container.decode(String.self, forKey: .marketplaceName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                startDate = try container.decode(String.self, forKey: .startDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(String.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                endDate = try container.decode(String.self, forKey: .endDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(marketplaceName, forKey: .marketplaceName)

            try? container.encodeIfPresent(startDate, forKey: .startDate)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(endDate, forKey: .endDate)
        }
    }

    /*
         Model: MkpLogsResp
         Used By: Analytics
     */

    class MkpLogsResp: Codable {
        public var startTimeIso: String?

        public var endTimeIso: String?

        public var eventType: String?

        public var traceId: String?

        public var count: String?

        public var status: String?

        public enum CodingKeys: String, CodingKey {
            case startTimeIso = "start_time_iso"

            case endTimeIso = "end_time_iso"

            case eventType = "event_type"

            case traceId = "trace_id"

            case count

            case status
        }

        public init(count: String?, endTimeIso: String?, eventType: String?, startTimeIso: String?, status: String?, traceId: String?) {
            self.startTimeIso = startTimeIso

            self.endTimeIso = endTimeIso

            self.eventType = eventType

            self.traceId = traceId

            self.count = count

            self.status = status
        }

        public func duplicate() -> MkpLogsResp {
            let dict = self.dictionary!
            let copy = MkpLogsResp(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                startTimeIso = try container.decode(String.self, forKey: .startTimeIso)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                endTimeIso = try container.decode(String.self, forKey: .endTimeIso)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eventType = try container.decode(String.self, forKey: .eventType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                count = try container.decode(String.self, forKey: .count)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(startTimeIso, forKey: .startTimeIso)

            try? container.encodeIfPresent(endTimeIso, forKey: .endTimeIso)

            try? container.encodeIfPresent(eventType, forKey: .eventType)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(count, forKey: .count)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }

    /*
         Model: GetLogsListRes
         Used By: Analytics
     */

    class GetLogsListRes: Codable {
        public var items: [MkpLogsResp]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [MkpLogsResp]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> GetLogsListRes {
            let dict = self.dictionary!
            let copy = GetLogsListRes(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([MkpLogsResp].self, forKey: .items)

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
         Model: SearchLogReq
         Used By: Analytics
     */

    class SearchLogReq: Codable {
        public var marketplaceName: String?

        public var startDate: String?

        public var companyId: String?

        public var endDate: String?

        public var identifier: String?

        public var identifierValue: String?

        public enum CodingKeys: String, CodingKey {
            case marketplaceName = "marketplace_name"

            case startDate = "start_date"

            case companyId = "company_id"

            case endDate = "end_date"

            case identifier

            case identifierValue = "identifier_value"
        }

        public init(companyId: String?, endDate: String?, identifier: String?, identifierValue: String?, marketplaceName: String?, startDate: String?) {
            self.marketplaceName = marketplaceName

            self.startDate = startDate

            self.companyId = companyId

            self.endDate = endDate

            self.identifier = identifier

            self.identifierValue = identifierValue
        }

        public func duplicate() -> SearchLogReq {
            let dict = self.dictionary!
            let copy = SearchLogReq(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                marketplaceName = try container.decode(String.self, forKey: .marketplaceName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                startDate = try container.decode(String.self, forKey: .startDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(String.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                endDate = try container.decode(String.self, forKey: .endDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifier = try container.decode(String.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifierValue = try container.decode(String.self, forKey: .identifierValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(marketplaceName, forKey: .marketplaceName)

            try? container.encodeIfPresent(startDate, forKey: .startDate)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(endDate, forKey: .endDate)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(identifierValue, forKey: .identifierValue)
        }
    }

    /*
         Model: LogInfo
         Used By: Analytics
     */

    class LogInfo: Codable {
        public var id: String?

        public var status: String?

        public var eventType: String?

        public var marketplaceName: String?

        public var event: String?

        public var traceId: String?

        public var companyId: Double?

        public var brandId: Double?

        public var storeCode: String?

        public var storeId: Double?

        public var itemId: Double?

        public var articleId: String?

        public var sellerIdentifier: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case status

            case eventType = "event_type"

            case marketplaceName = "marketplace_name"

            case event

            case traceId = "trace_id"

            case companyId = "company_id"

            case brandId = "brand_id"

            case storeCode = "store_code"

            case storeId = "store_id"

            case itemId = "item_id"

            case articleId = "article_id"

            case sellerIdentifier = "seller_identifier"
        }

        public init(articleId: String?, brandId: Double?, companyId: Double?, event: String?, eventType: String?, itemId: Double?, marketplaceName: String?, sellerIdentifier: String?, status: String?, storeCode: String?, storeId: Double?, traceId: String?, id: String?) {
            self.id = id

            self.status = status

            self.eventType = eventType

            self.marketplaceName = marketplaceName

            self.event = event

            self.traceId = traceId

            self.companyId = companyId

            self.brandId = brandId

            self.storeCode = storeCode

            self.storeId = storeId

            self.itemId = itemId

            self.articleId = articleId

            self.sellerIdentifier = sellerIdentifier
        }

        public func duplicate() -> LogInfo {
            let dict = self.dictionary!
            let copy = LogInfo(dictionary: dict)!
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
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eventType = try container.decode(String.self, forKey: .eventType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marketplaceName = try container.decode(String.self, forKey: .marketplaceName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                event = try container.decode(String.self, forKey: .event)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Double.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandId = try container.decode(Double.self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeCode = try container.decode(String.self, forKey: .storeCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeId = try container.decode(Double.self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemId = try container.decode(Double.self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleId = try container.decode(String.self, forKey: .articleId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(eventType, forKey: .eventType)

            try? container.encodeIfPresent(marketplaceName, forKey: .marketplaceName)

            try? container.encodeIfPresent(event, forKey: .event)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(articleId, forKey: .articleId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
        }
    }

    /*
         Model: SearchLogRes
         Used By: Analytics
     */

    class SearchLogRes: Codable {
        public var items: [LogInfo]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [LogInfo]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> SearchLogRes {
            let dict = self.dictionary!
            let copy = SearchLogRes(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([LogInfo].self, forKey: .items)

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
}
