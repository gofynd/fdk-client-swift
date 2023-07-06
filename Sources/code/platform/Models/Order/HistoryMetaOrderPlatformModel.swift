

import Foundation

public extension PlatformClient.Order {
    /*
         Model: HistoryMeta
         Used By: Order
     */

    class HistoryMeta: Codable {
        public var caller: String?

        public var storeName: String?

        public var callerid: String?

        public var duration: String?

        public var activityComment: String?

        public var reason: HistoryReason?

        public var receiver: String?

        public var recipient: String?

        public var endtime: String?

        public var shortLink: String?

        public var starttime: String?

        public var recordpath: String?

        public var message: String?

        public var status1: String?

        public var callId: String?

        public var status2: String?

        public var status: String?

        public var activityType: String?

        public var channelType: String?

        public var slug: String?

        public var storeCode: String?

        public var billsec: String?

        public var storeId: Int?

        public enum CodingKeys: String, CodingKey {
            case caller

            case storeName = "store_name"

            case callerid

            case duration

            case activityComment = "activity_comment"

            case reason

            case receiver

            case recipient

            case endtime

            case shortLink = "short_link"

            case starttime

            case recordpath

            case message

            case status1

            case callId = "call_id"

            case status2

            case status

            case activityType = "activity_type"

            case channelType = "channel_type"

            case slug

            case storeCode = "store_code"

            case billsec

            case storeId = "store_id"
        }

        public init(activityComment: String? = nil, activityType: String? = nil, billsec: String? = nil, caller: String? = nil, callerid: String? = nil, callId: String? = nil, channelType: String? = nil, duration: String? = nil, endtime: String? = nil, message: String? = nil, reason: HistoryReason? = nil, receiver: String? = nil, recipient: String? = nil, recordpath: String? = nil, shortLink: String? = nil, slug: String? = nil, starttime: String? = nil, status: String? = nil, status1: String? = nil, status2: String? = nil, storeCode: String? = nil, storeId: Int? = nil, storeName: String? = nil) {
            self.caller = caller

            self.storeName = storeName

            self.callerid = callerid

            self.duration = duration

            self.activityComment = activityComment

            self.reason = reason

            self.receiver = receiver

            self.recipient = recipient

            self.endtime = endtime

            self.shortLink = shortLink

            self.starttime = starttime

            self.recordpath = recordpath

            self.message = message

            self.status1 = status1

            self.callId = callId

            self.status2 = status2

            self.status = status

            self.activityType = activityType

            self.channelType = channelType

            self.slug = slug

            self.storeCode = storeCode

            self.billsec = billsec

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                caller = try container.decode(String.self, forKey: .caller)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeName = try container.decode(String.self, forKey: .storeName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                callerid = try container.decode(String.self, forKey: .callerid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                duration = try container.decode(String.self, forKey: .duration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                activityComment = try container.decode(String.self, forKey: .activityComment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reason = try container.decode(HistoryReason.self, forKey: .reason)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                receiver = try container.decode(String.self, forKey: .receiver)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                recipient = try container.decode(String.self, forKey: .recipient)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                endtime = try container.decode(String.self, forKey: .endtime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shortLink = try container.decode(String.self, forKey: .shortLink)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                starttime = try container.decode(String.self, forKey: .starttime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                recordpath = try container.decode(String.self, forKey: .recordpath)

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
                status1 = try container.decode(String.self, forKey: .status1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                callId = try container.decode(String.self, forKey: .callId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status2 = try container.decode(String.self, forKey: .status2)

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
                activityType = try container.decode(String.self, forKey: .activityType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                channelType = try container.decode(String.self, forKey: .channelType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

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
                billsec = try container.decode(String.self, forKey: .billsec)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeId = try container.decode(Int.self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(caller, forKey: .caller)

            try? container.encode(storeName, forKey: .storeName)

            try? container.encode(callerid, forKey: .callerid)

            try? container.encode(duration, forKey: .duration)

            try? container.encode(activityComment, forKey: .activityComment)

            try? container.encodeIfPresent(reason, forKey: .reason)

            try? container.encode(receiver, forKey: .receiver)

            try? container.encode(recipient, forKey: .recipient)

            try? container.encode(endtime, forKey: .endtime)

            try? container.encode(shortLink, forKey: .shortLink)

            try? container.encode(starttime, forKey: .starttime)

            try? container.encode(recordpath, forKey: .recordpath)

            try? container.encode(message, forKey: .message)

            try? container.encode(status1, forKey: .status1)

            try? container.encode(callId, forKey: .callId)

            try? container.encode(status2, forKey: .status2)

            try? container.encode(status, forKey: .status)

            try? container.encode(activityType, forKey: .activityType)

            try? container.encode(channelType, forKey: .channelType)

            try? container.encode(slug, forKey: .slug)

            try? container.encode(storeCode, forKey: .storeCode)

            try? container.encode(billsec, forKey: .billsec)

            try? container.encode(storeId, forKey: .storeId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: HistoryMeta
         Used By: Order
     */

    class HistoryMeta: Codable {
        public var caller: String?

        public var storeName: String?

        public var callerid: String?

        public var duration: String?

        public var activityComment: String?

        public var reason: HistoryReason?

        public var receiver: String?

        public var recipient: String?

        public var endtime: String?

        public var shortLink: String?

        public var starttime: String?

        public var recordpath: String?

        public var message: String?

        public var status1: String?

        public var callId: String?

        public var status2: String?

        public var status: String?

        public var activityType: String?

        public var channelType: String?

        public var slug: String?

        public var storeCode: String?

        public var billsec: String?

        public var storeId: Int?

        public enum CodingKeys: String, CodingKey {
            case caller

            case storeName = "store_name"

            case callerid

            case duration

            case activityComment = "activity_comment"

            case reason

            case receiver

            case recipient

            case endtime

            case shortLink = "short_link"

            case starttime

            case recordpath

            case message

            case status1

            case callId = "call_id"

            case status2

            case status

            case activityType = "activity_type"

            case channelType = "channel_type"

            case slug

            case storeCode = "store_code"

            case billsec

            case storeId = "store_id"
        }

        public init(activityComment: String? = nil, activityType: String? = nil, billsec: String? = nil, caller: String? = nil, callerid: String? = nil, callId: String? = nil, channelType: String? = nil, duration: String? = nil, endtime: String? = nil, message: String? = nil, reason: HistoryReason? = nil, receiver: String? = nil, recipient: String? = nil, recordpath: String? = nil, shortLink: String? = nil, slug: String? = nil, starttime: String? = nil, status: String? = nil, status1: String? = nil, status2: String? = nil, storeCode: String? = nil, storeId: Int? = nil, storeName: String? = nil) {
            self.caller = caller

            self.storeName = storeName

            self.callerid = callerid

            self.duration = duration

            self.activityComment = activityComment

            self.reason = reason

            self.receiver = receiver

            self.recipient = recipient

            self.endtime = endtime

            self.shortLink = shortLink

            self.starttime = starttime

            self.recordpath = recordpath

            self.message = message

            self.status1 = status1

            self.callId = callId

            self.status2 = status2

            self.status = status

            self.activityType = activityType

            self.channelType = channelType

            self.slug = slug

            self.storeCode = storeCode

            self.billsec = billsec

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                caller = try container.decode(String.self, forKey: .caller)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeName = try container.decode(String.self, forKey: .storeName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                callerid = try container.decode(String.self, forKey: .callerid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                duration = try container.decode(String.self, forKey: .duration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                activityComment = try container.decode(String.self, forKey: .activityComment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reason = try container.decode(HistoryReason.self, forKey: .reason)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                receiver = try container.decode(String.self, forKey: .receiver)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                recipient = try container.decode(String.self, forKey: .recipient)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                endtime = try container.decode(String.self, forKey: .endtime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shortLink = try container.decode(String.self, forKey: .shortLink)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                starttime = try container.decode(String.self, forKey: .starttime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                recordpath = try container.decode(String.self, forKey: .recordpath)

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
                status1 = try container.decode(String.self, forKey: .status1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                callId = try container.decode(String.self, forKey: .callId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status2 = try container.decode(String.self, forKey: .status2)

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
                activityType = try container.decode(String.self, forKey: .activityType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                channelType = try container.decode(String.self, forKey: .channelType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

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
                billsec = try container.decode(String.self, forKey: .billsec)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeId = try container.decode(Int.self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(caller, forKey: .caller)

            try? container.encode(storeName, forKey: .storeName)

            try? container.encode(callerid, forKey: .callerid)

            try? container.encode(duration, forKey: .duration)

            try? container.encode(activityComment, forKey: .activityComment)

            try? container.encodeIfPresent(reason, forKey: .reason)

            try? container.encode(receiver, forKey: .receiver)

            try? container.encode(recipient, forKey: .recipient)

            try? container.encode(endtime, forKey: .endtime)

            try? container.encode(shortLink, forKey: .shortLink)

            try? container.encode(starttime, forKey: .starttime)

            try? container.encode(recordpath, forKey: .recordpath)

            try? container.encode(message, forKey: .message)

            try? container.encode(status1, forKey: .status1)

            try? container.encode(callId, forKey: .callId)

            try? container.encode(status2, forKey: .status2)

            try? container.encode(status, forKey: .status)

            try? container.encode(activityType, forKey: .activityType)

            try? container.encode(channelType, forKey: .channelType)

            try? container.encode(slug, forKey: .slug)

            try? container.encode(storeCode, forKey: .storeCode)

            try? container.encode(billsec, forKey: .billsec)

            try? container.encode(storeId, forKey: .storeId)
        }
    }
}
