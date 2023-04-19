

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var paymentModeIdentifier: String

        public var id: String

        public var paymentMode: String

        public var applicationId: String

        public var currentStatus: String

        public var aggregatorPaymentObject: [String: Any]?

        public var collectedBy: String

        public var currency: String

        public var companyId: String

        public var refundedBy: String

        public var userObject: [String: Any]

        public var createdOn: String

        public var modifiedOn: String

        public var amountInPaisa: String

        public var paymentId: String?

        public var refundObject: [String: Any]?

        public var paymentGateway: String

        public var allStatus: [String]

        public enum CodingKeys: String, CodingKey {
            case paymentModeIdentifier = "payment_mode_identifier"

            case id

            case paymentMode = "payment_mode"

            case applicationId = "application_id"

            case currentStatus = "current_status"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case collectedBy = "collected_by"

            case currency

            case companyId = "company_id"

            case refundedBy = "refunded_by"

            case userObject = "user_object"

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case amountInPaisa = "amount_in_paisa"

            case paymentId = "payment_id"

            case refundObject = "refund_object"

            case paymentGateway = "payment_gateway"

            case allStatus = "all_status"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentModeIdentifier = paymentModeIdentifier

            self.id = id

            self.paymentMode = paymentMode

            self.applicationId = applicationId

            self.currentStatus = currentStatus

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.collectedBy = collectedBy

            self.currency = currency

            self.companyId = companyId

            self.refundedBy = refundedBy

            self.userObject = userObject

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.amountInPaisa = amountInPaisa

            self.paymentId = paymentId

            self.refundObject = refundObject

            self.paymentGateway = paymentGateway

            self.allStatus = allStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            id = try container.decode(String.self, forKey: .id)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            currency = try container.decode(String.self, forKey: .currency)

            companyId = try container.decode(String.self, forKey: .companyId)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            allStatus = try container.decode([String].self, forKey: .allStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

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
        public var paymentModeIdentifier: String

        public var id: String

        public var paymentMode: String

        public var applicationId: String

        public var currentStatus: String

        public var aggregatorPaymentObject: [String: Any]?

        public var collectedBy: String

        public var currency: String

        public var companyId: String

        public var refundedBy: String

        public var userObject: [String: Any]

        public var createdOn: String

        public var modifiedOn: String

        public var amountInPaisa: String

        public var paymentId: String?

        public var refundObject: [String: Any]?

        public var paymentGateway: String

        public var allStatus: [String]

        public enum CodingKeys: String, CodingKey {
            case paymentModeIdentifier = "payment_mode_identifier"

            case id

            case paymentMode = "payment_mode"

            case applicationId = "application_id"

            case currentStatus = "current_status"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case collectedBy = "collected_by"

            case currency

            case companyId = "company_id"

            case refundedBy = "refunded_by"

            case userObject = "user_object"

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case amountInPaisa = "amount_in_paisa"

            case paymentId = "payment_id"

            case refundObject = "refund_object"

            case paymentGateway = "payment_gateway"

            case allStatus = "all_status"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentModeIdentifier = paymentModeIdentifier

            self.id = id

            self.paymentMode = paymentMode

            self.applicationId = applicationId

            self.currentStatus = currentStatus

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.collectedBy = collectedBy

            self.currency = currency

            self.companyId = companyId

            self.refundedBy = refundedBy

            self.userObject = userObject

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.amountInPaisa = amountInPaisa

            self.paymentId = paymentId

            self.refundObject = refundObject

            self.paymentGateway = paymentGateway

            self.allStatus = allStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            id = try container.decode(String.self, forKey: .id)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            currency = try container.decode(String.self, forKey: .currency)

            companyId = try container.decode(String.self, forKey: .companyId)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            allStatus = try container.decode([String].self, forKey: .allStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)
        }
    }
}
