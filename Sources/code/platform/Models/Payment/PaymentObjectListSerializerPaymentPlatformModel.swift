

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var id: String

        public var collectedBy: String

        public var paymentId: String?

        public var refundedBy: String

        public var applicationId: String

        public var userObject: [String: Any]

        public var modifiedOn: String

        public var paymentMode: String

        public var amountInPaisa: String

        public var createdOn: String

        public var currency: String

        public var refundObject: [String: Any]?

        public var companyId: String

        public var paymentModeIdentifier: String

        public var currentStatus: String

        public var paymentGateway: String

        public var aggregatorPaymentObject: [String: Any]?

        public var allStatus: [String]

        public enum CodingKeys: String, CodingKey {
            case id

            case collectedBy = "collected_by"

            case paymentId = "payment_id"

            case refundedBy = "refunded_by"

            case applicationId = "application_id"

            case userObject = "user_object"

            case modifiedOn = "modified_on"

            case paymentMode = "payment_mode"

            case amountInPaisa = "amount_in_paisa"

            case createdOn = "created_on"

            case currency

            case refundObject = "refund_object"

            case companyId = "company_id"

            case paymentModeIdentifier = "payment_mode_identifier"

            case currentStatus = "current_status"

            case paymentGateway = "payment_gateway"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case allStatus = "all_status"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.id = id

            self.collectedBy = collectedBy

            self.paymentId = paymentId

            self.refundedBy = refundedBy

            self.applicationId = applicationId

            self.userObject = userObject

            self.modifiedOn = modifiedOn

            self.paymentMode = paymentMode

            self.amountInPaisa = amountInPaisa

            self.createdOn = createdOn

            self.currency = currency

            self.refundObject = refundObject

            self.companyId = companyId

            self.paymentModeIdentifier = paymentModeIdentifier

            self.currentStatus = currentStatus

            self.paymentGateway = paymentGateway

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.allStatus = allStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(String.self, forKey: .companyId)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            allStatus = try container.decode([String].self, forKey: .allStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var id: String

        public var collectedBy: String

        public var paymentId: String?

        public var refundedBy: String

        public var applicationId: String

        public var userObject: [String: Any]

        public var modifiedOn: String

        public var paymentMode: String

        public var amountInPaisa: String

        public var createdOn: String

        public var currency: String

        public var refundObject: [String: Any]?

        public var companyId: String

        public var paymentModeIdentifier: String

        public var currentStatus: String

        public var paymentGateway: String

        public var aggregatorPaymentObject: [String: Any]?

        public var allStatus: [String]

        public enum CodingKeys: String, CodingKey {
            case id

            case collectedBy = "collected_by"

            case paymentId = "payment_id"

            case refundedBy = "refunded_by"

            case applicationId = "application_id"

            case userObject = "user_object"

            case modifiedOn = "modified_on"

            case paymentMode = "payment_mode"

            case amountInPaisa = "amount_in_paisa"

            case createdOn = "created_on"

            case currency

            case refundObject = "refund_object"

            case companyId = "company_id"

            case paymentModeIdentifier = "payment_mode_identifier"

            case currentStatus = "current_status"

            case paymentGateway = "payment_gateway"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case allStatus = "all_status"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.id = id

            self.collectedBy = collectedBy

            self.paymentId = paymentId

            self.refundedBy = refundedBy

            self.applicationId = applicationId

            self.userObject = userObject

            self.modifiedOn = modifiedOn

            self.paymentMode = paymentMode

            self.amountInPaisa = amountInPaisa

            self.createdOn = createdOn

            self.currency = currency

            self.refundObject = refundObject

            self.companyId = companyId

            self.paymentModeIdentifier = paymentModeIdentifier

            self.currentStatus = currentStatus

            self.paymentGateway = paymentGateway

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.allStatus = allStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(String.self, forKey: .companyId)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            allStatus = try container.decode([String].self, forKey: .allStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)
        }
    }
}
