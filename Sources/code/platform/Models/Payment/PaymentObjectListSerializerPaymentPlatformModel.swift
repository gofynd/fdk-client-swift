

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var paymentId: String?

        public var userObject: [String: Any]

        public var amountInPaisa: String

        public var paymentModeIdentifier: String

        public var collectedBy: String

        public var paymentMode: String

        public var id: String

        public var aggregatorPaymentObject: [String: Any]?

        public var refundObject: [String: Any]?

        public var paymentGateway: String

        public var modifiedOn: String

        public var createdOn: String

        public var currentStatus: String

        public var currency: String

        public var applicationId: String

        public var refundedBy: String

        public var companyId: String

        public var allStatus: [String]

        public enum CodingKeys: String, CodingKey {
            case paymentId = "payment_id"

            case userObject = "user_object"

            case amountInPaisa = "amount_in_paisa"

            case paymentModeIdentifier = "payment_mode_identifier"

            case collectedBy = "collected_by"

            case paymentMode = "payment_mode"

            case id

            case aggregatorPaymentObject = "aggregator_payment_object"

            case refundObject = "refund_object"

            case paymentGateway = "payment_gateway"

            case modifiedOn = "modified_on"

            case createdOn = "created_on"

            case currentStatus = "current_status"

            case currency

            case applicationId = "application_id"

            case refundedBy = "refunded_by"

            case companyId = "company_id"

            case allStatus = "all_status"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentId = paymentId

            self.userObject = userObject

            self.amountInPaisa = amountInPaisa

            self.paymentModeIdentifier = paymentModeIdentifier

            self.collectedBy = collectedBy

            self.paymentMode = paymentMode

            self.id = id

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.refundObject = refundObject

            self.paymentGateway = paymentGateway

            self.modifiedOn = modifiedOn

            self.createdOn = createdOn

            self.currentStatus = currentStatus

            self.currency = currency

            self.applicationId = applicationId

            self.refundedBy = refundedBy

            self.companyId = companyId

            self.allStatus = allStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            id = try container.decode(String.self, forKey: .id)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

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

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            currency = try container.decode(String.self, forKey: .currency)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            companyId = try container.decode(String.self, forKey: .companyId)

            allStatus = try container.decode([String].self, forKey: .allStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

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
        public var paymentId: String?

        public var userObject: [String: Any]

        public var amountInPaisa: String

        public var paymentModeIdentifier: String

        public var collectedBy: String

        public var paymentMode: String

        public var id: String

        public var aggregatorPaymentObject: [String: Any]?

        public var refundObject: [String: Any]?

        public var paymentGateway: String

        public var modifiedOn: String

        public var createdOn: String

        public var currentStatus: String

        public var currency: String

        public var applicationId: String

        public var refundedBy: String

        public var companyId: String

        public var allStatus: [String]

        public enum CodingKeys: String, CodingKey {
            case paymentId = "payment_id"

            case userObject = "user_object"

            case amountInPaisa = "amount_in_paisa"

            case paymentModeIdentifier = "payment_mode_identifier"

            case collectedBy = "collected_by"

            case paymentMode = "payment_mode"

            case id

            case aggregatorPaymentObject = "aggregator_payment_object"

            case refundObject = "refund_object"

            case paymentGateway = "payment_gateway"

            case modifiedOn = "modified_on"

            case createdOn = "created_on"

            case currentStatus = "current_status"

            case currency

            case applicationId = "application_id"

            case refundedBy = "refunded_by"

            case companyId = "company_id"

            case allStatus = "all_status"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentId = paymentId

            self.userObject = userObject

            self.amountInPaisa = amountInPaisa

            self.paymentModeIdentifier = paymentModeIdentifier

            self.collectedBy = collectedBy

            self.paymentMode = paymentMode

            self.id = id

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.refundObject = refundObject

            self.paymentGateway = paymentGateway

            self.modifiedOn = modifiedOn

            self.createdOn = createdOn

            self.currentStatus = currentStatus

            self.currency = currency

            self.applicationId = applicationId

            self.refundedBy = refundedBy

            self.companyId = companyId

            self.allStatus = allStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            id = try container.decode(String.self, forKey: .id)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

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

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            currency = try container.decode(String.self, forKey: .currency)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            companyId = try container.decode(String.self, forKey: .companyId)

            allStatus = try container.decode([String].self, forKey: .allStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)
        }
    }
}
