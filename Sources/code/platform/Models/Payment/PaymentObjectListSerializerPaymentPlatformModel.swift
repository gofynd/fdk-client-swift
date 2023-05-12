

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var currency: String

        public var currentStatus: String

        public var companyId: String

        public var userObject: [String: Any]

        public var allStatus: [String]

        public var id: String

        public var applicationId: String

        public var refundedBy: String

        public var modifiedOn: String

        public var collectedBy: String

        public var paymentGateway: String

        public var paymentMode: String

        public var createdOn: String

        public var refundObject: [String: Any]?

        public var aggregatorPaymentObject: [String: Any]?

        public var amountInPaisa: String

        public var paymentModeIdentifier: String

        public var paymentId: String?

        public enum CodingKeys: String, CodingKey {
            case currency

            case currentStatus = "current_status"

            case companyId = "company_id"

            case userObject = "user_object"

            case allStatus = "all_status"

            case id

            case applicationId = "application_id"

            case refundedBy = "refunded_by"

            case modifiedOn = "modified_on"

            case collectedBy = "collected_by"

            case paymentGateway = "payment_gateway"

            case paymentMode = "payment_mode"

            case createdOn = "created_on"

            case refundObject = "refund_object"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case amountInPaisa = "amount_in_paisa"

            case paymentModeIdentifier = "payment_mode_identifier"

            case paymentId = "payment_id"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.currency = currency

            self.currentStatus = currentStatus

            self.companyId = companyId

            self.userObject = userObject

            self.allStatus = allStatus

            self.id = id

            self.applicationId = applicationId

            self.refundedBy = refundedBy

            self.modifiedOn = modifiedOn

            self.collectedBy = collectedBy

            self.paymentGateway = paymentGateway

            self.paymentMode = paymentMode

            self.createdOn = createdOn

            self.refundObject = refundObject

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.amountInPaisa = amountInPaisa

            self.paymentModeIdentifier = paymentModeIdentifier

            self.paymentId = paymentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            companyId = try container.decode(String.self, forKey: .companyId)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            id = try container.decode(String.self, forKey: .id)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encode(paymentId, forKey: .paymentId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var currency: String

        public var currentStatus: String

        public var companyId: String

        public var userObject: [String: Any]

        public var allStatus: [String]

        public var id: String

        public var applicationId: String

        public var refundedBy: String

        public var modifiedOn: String

        public var collectedBy: String

        public var paymentGateway: String

        public var paymentMode: String

        public var createdOn: String

        public var refundObject: [String: Any]?

        public var aggregatorPaymentObject: [String: Any]?

        public var amountInPaisa: String

        public var paymentModeIdentifier: String

        public var paymentId: String?

        public enum CodingKeys: String, CodingKey {
            case currency

            case currentStatus = "current_status"

            case companyId = "company_id"

            case userObject = "user_object"

            case allStatus = "all_status"

            case id

            case applicationId = "application_id"

            case refundedBy = "refunded_by"

            case modifiedOn = "modified_on"

            case collectedBy = "collected_by"

            case paymentGateway = "payment_gateway"

            case paymentMode = "payment_mode"

            case createdOn = "created_on"

            case refundObject = "refund_object"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case amountInPaisa = "amount_in_paisa"

            case paymentModeIdentifier = "payment_mode_identifier"

            case paymentId = "payment_id"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.currency = currency

            self.currentStatus = currentStatus

            self.companyId = companyId

            self.userObject = userObject

            self.allStatus = allStatus

            self.id = id

            self.applicationId = applicationId

            self.refundedBy = refundedBy

            self.modifiedOn = modifiedOn

            self.collectedBy = collectedBy

            self.paymentGateway = paymentGateway

            self.paymentMode = paymentMode

            self.createdOn = createdOn

            self.refundObject = refundObject

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.amountInPaisa = amountInPaisa

            self.paymentModeIdentifier = paymentModeIdentifier

            self.paymentId = paymentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            companyId = try container.decode(String.self, forKey: .companyId)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            id = try container.decode(String.self, forKey: .id)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encode(paymentId, forKey: .paymentId)
        }
    }
}
