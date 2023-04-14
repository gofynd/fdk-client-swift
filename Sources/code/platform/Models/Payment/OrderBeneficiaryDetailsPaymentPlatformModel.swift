

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var title: String

        public var branchName: String?

        public var bankName: String

        public var modifiedOn: String

        public var email: String

        public var isActive: Bool

        public var ifscCode: String

        public var id: Int

        public var subtitle: String

        public var delightsUserName: String?

        public var transferMode: String

        public var displayName: String

        public var address: String

        public var accountNo: String

        public var beneficiaryId: String

        public var mobile: String?

        public var comment: String?

        public var accountHolder: String

        public var createdOn: String

        public enum CodingKeys: String, CodingKey {
            case title

            case branchName = "branch_name"

            case bankName = "bank_name"

            case modifiedOn = "modified_on"

            case email

            case isActive = "is_active"

            case ifscCode = "ifsc_code"

            case id

            case subtitle

            case delightsUserName = "delights_user_name"

            case transferMode = "transfer_mode"

            case displayName = "display_name"

            case address

            case accountNo = "account_no"

            case beneficiaryId = "beneficiary_id"

            case mobile

            case comment

            case accountHolder = "account_holder"

            case createdOn = "created_on"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.title = title

            self.branchName = branchName

            self.bankName = bankName

            self.modifiedOn = modifiedOn

            self.email = email

            self.isActive = isActive

            self.ifscCode = ifscCode

            self.id = id

            self.subtitle = subtitle

            self.delightsUserName = delightsUserName

            self.transferMode = transferMode

            self.displayName = displayName

            self.address = address

            self.accountNo = accountNo

            self.beneficiaryId = beneficiaryId

            self.mobile = mobile

            self.comment = comment

            self.accountHolder = accountHolder

            self.createdOn = createdOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            title = try container.decode(String.self, forKey: .title)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankName = try container.decode(String.self, forKey: .bankName)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            email = try container.decode(String.self, forKey: .email)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            id = try container.decode(Int.self, forKey: .id)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferMode = try container.decode(String.self, forKey: .transferMode)

            displayName = try container.decode(String.self, forKey: .displayName)

            address = try container.decode(String.self, forKey: .address)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            createdOn = try container.decode(String.self, forKey: .createdOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var title: String

        public var branchName: String?

        public var bankName: String

        public var modifiedOn: String

        public var email: String

        public var isActive: Bool

        public var ifscCode: String

        public var id: Int

        public var subtitle: String

        public var delightsUserName: String?

        public var transferMode: String

        public var displayName: String

        public var address: String

        public var accountNo: String

        public var beneficiaryId: String

        public var mobile: String?

        public var comment: String?

        public var accountHolder: String

        public var createdOn: String

        public enum CodingKeys: String, CodingKey {
            case title

            case branchName = "branch_name"

            case bankName = "bank_name"

            case modifiedOn = "modified_on"

            case email

            case isActive = "is_active"

            case ifscCode = "ifsc_code"

            case id

            case subtitle

            case delightsUserName = "delights_user_name"

            case transferMode = "transfer_mode"

            case displayName = "display_name"

            case address

            case accountNo = "account_no"

            case beneficiaryId = "beneficiary_id"

            case mobile

            case comment

            case accountHolder = "account_holder"

            case createdOn = "created_on"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.title = title

            self.branchName = branchName

            self.bankName = bankName

            self.modifiedOn = modifiedOn

            self.email = email

            self.isActive = isActive

            self.ifscCode = ifscCode

            self.id = id

            self.subtitle = subtitle

            self.delightsUserName = delightsUserName

            self.transferMode = transferMode

            self.displayName = displayName

            self.address = address

            self.accountNo = accountNo

            self.beneficiaryId = beneficiaryId

            self.mobile = mobile

            self.comment = comment

            self.accountHolder = accountHolder

            self.createdOn = createdOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            title = try container.decode(String.self, forKey: .title)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankName = try container.decode(String.self, forKey: .bankName)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            email = try container.decode(String.self, forKey: .email)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            id = try container.decode(Int.self, forKey: .id)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferMode = try container.decode(String.self, forKey: .transferMode)

            displayName = try container.decode(String.self, forKey: .displayName)

            address = try container.decode(String.self, forKey: .address)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            createdOn = try container.decode(String.self, forKey: .createdOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }
}
