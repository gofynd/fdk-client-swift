

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var isActive: Bool

        public var address: String

        public var beneficiaryId: String

        public var accountHolder: String

        public var bankName: String

        public var displayName: String

        public var id: Int

        public var email: String

        public var modifiedOn: String

        public var createdOn: String

        public var accountNo: String

        public var title: String

        public var ifscCode: String

        public var subtitle: String

        public var branchName: String?

        public var comment: String?

        public var delightsUserName: String?

        public var mobile: String?

        public var transferMode: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case address

            case beneficiaryId = "beneficiary_id"

            case accountHolder = "account_holder"

            case bankName = "bank_name"

            case displayName = "display_name"

            case id

            case email

            case modifiedOn = "modified_on"

            case createdOn = "created_on"

            case accountNo = "account_no"

            case title

            case ifscCode = "ifsc_code"

            case subtitle

            case branchName = "branch_name"

            case comment

            case delightsUserName = "delights_user_name"

            case mobile

            case transferMode = "transfer_mode"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.isActive = isActive

            self.address = address

            self.beneficiaryId = beneficiaryId

            self.accountHolder = accountHolder

            self.bankName = bankName

            self.displayName = displayName

            self.id = id

            self.email = email

            self.modifiedOn = modifiedOn

            self.createdOn = createdOn

            self.accountNo = accountNo

            self.title = title

            self.ifscCode = ifscCode

            self.subtitle = subtitle

            self.branchName = branchName

            self.comment = comment

            self.delightsUserName = delightsUserName

            self.mobile = mobile

            self.transferMode = transferMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            address = try container.decode(String.self, forKey: .address)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            bankName = try container.decode(String.self, forKey: .bankName)

            displayName = try container.decode(String.self, forKey: .displayName)

            id = try container.decode(Int.self, forKey: .id)

            email = try container.decode(String.self, forKey: .email)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            title = try container.decode(String.self, forKey: .title)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

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

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferMode = try container.decode(String.self, forKey: .transferMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var isActive: Bool

        public var address: String

        public var beneficiaryId: String

        public var accountHolder: String

        public var bankName: String

        public var displayName: String

        public var id: Int

        public var email: String

        public var modifiedOn: String

        public var createdOn: String

        public var accountNo: String

        public var title: String

        public var ifscCode: String

        public var subtitle: String

        public var branchName: String?

        public var comment: String?

        public var delightsUserName: String?

        public var mobile: String?

        public var transferMode: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case address

            case beneficiaryId = "beneficiary_id"

            case accountHolder = "account_holder"

            case bankName = "bank_name"

            case displayName = "display_name"

            case id

            case email

            case modifiedOn = "modified_on"

            case createdOn = "created_on"

            case accountNo = "account_no"

            case title

            case ifscCode = "ifsc_code"

            case subtitle

            case branchName = "branch_name"

            case comment

            case delightsUserName = "delights_user_name"

            case mobile

            case transferMode = "transfer_mode"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.isActive = isActive

            self.address = address

            self.beneficiaryId = beneficiaryId

            self.accountHolder = accountHolder

            self.bankName = bankName

            self.displayName = displayName

            self.id = id

            self.email = email

            self.modifiedOn = modifiedOn

            self.createdOn = createdOn

            self.accountNo = accountNo

            self.title = title

            self.ifscCode = ifscCode

            self.subtitle = subtitle

            self.branchName = branchName

            self.comment = comment

            self.delightsUserName = delightsUserName

            self.mobile = mobile

            self.transferMode = transferMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            address = try container.decode(String.self, forKey: .address)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            bankName = try container.decode(String.self, forKey: .bankName)

            displayName = try container.decode(String.self, forKey: .displayName)

            id = try container.decode(Int.self, forKey: .id)

            email = try container.decode(String.self, forKey: .email)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            title = try container.decode(String.self, forKey: .title)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

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

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferMode = try container.decode(String.self, forKey: .transferMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
        }
    }
}
