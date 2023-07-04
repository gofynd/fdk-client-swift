

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var amountInPaisa: String

        public var id: String

        public var allStatus: [String]

        public var paymentGateway: String

        public var companyId: String

        public var createdOn: String

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentModeIdentifier: String

        public var currentStatus: String

        public var collectedBy: String

        public var userObject: [String: Any]

        public var applicationId: String

        public var paymentMode: String

        public var modifiedOn: String

        public var currency: String

        public var refundedBy: String

        public var paymentId: String?

        public var refundObject: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case amountInPaisa = "amount_in_paisa"

            case id

            case allStatus = "all_status"

            case paymentGateway = "payment_gateway"

            case companyId = "company_id"

            case createdOn = "created_on"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentModeIdentifier = "payment_mode_identifier"

            case currentStatus = "current_status"

            case collectedBy = "collected_by"

            case userObject = "user_object"

            case applicationId = "application_id"

            case paymentMode = "payment_mode"

            case modifiedOn = "modified_on"

            case currency

            case refundedBy = "refunded_by"

            case paymentId = "payment_id"

            case refundObject = "refund_object"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.amountInPaisa = amountInPaisa

            self.id = id

            self.allStatus = allStatus

            self.paymentGateway = paymentGateway

            self.companyId = companyId

            self.createdOn = createdOn

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentModeIdentifier = paymentModeIdentifier

            self.currentStatus = currentStatus

            self.collectedBy = collectedBy

            self.userObject = userObject

            self.applicationId = applicationId

            self.paymentMode = paymentMode

            self.modifiedOn = modifiedOn

            self.currency = currency

            self.refundedBy = refundedBy

            self.paymentId = paymentId

            self.refundObject = refundObject
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            id = try container.decode(String.self, forKey: .id)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            companyId = try container.decode(String.self, forKey: .companyId)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            currency = try container.decode(String.self, forKey: .currency)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encode(refundObject, forKey: .refundObject)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var amountInPaisa: String

        public var id: String

        public var allStatus: [String]

        public var paymentGateway: String

        public var companyId: String

        public var createdOn: String

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentModeIdentifier: String

        public var currentStatus: String

        public var collectedBy: String

        public var userObject: [String: Any]

        public var applicationId: String

        public var paymentMode: String

        public var modifiedOn: String

        public var currency: String

        public var refundedBy: String

        public var paymentId: String?

        public var refundObject: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case amountInPaisa = "amount_in_paisa"

            case id

            case allStatus = "all_status"

            case paymentGateway = "payment_gateway"

            case companyId = "company_id"

            case createdOn = "created_on"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentModeIdentifier = "payment_mode_identifier"

            case currentStatus = "current_status"

            case collectedBy = "collected_by"

            case userObject = "user_object"

            case applicationId = "application_id"

            case paymentMode = "payment_mode"

            case modifiedOn = "modified_on"

            case currency

            case refundedBy = "refunded_by"

            case paymentId = "payment_id"

            case refundObject = "refund_object"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.amountInPaisa = amountInPaisa

            self.id = id

            self.allStatus = allStatus

            self.paymentGateway = paymentGateway

            self.companyId = companyId

            self.createdOn = createdOn

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentModeIdentifier = paymentModeIdentifier

            self.currentStatus = currentStatus

            self.collectedBy = collectedBy

            self.userObject = userObject

            self.applicationId = applicationId

            self.paymentMode = paymentMode

            self.modifiedOn = modifiedOn

            self.currency = currency

            self.refundedBy = refundedBy

            self.paymentId = paymentId

            self.refundObject = refundObject
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            id = try container.decode(String.self, forKey: .id)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            companyId = try container.decode(String.self, forKey: .companyId)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            currency = try container.decode(String.self, forKey: .currency)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encode(refundObject, forKey: .refundObject)
        }
    }
}
