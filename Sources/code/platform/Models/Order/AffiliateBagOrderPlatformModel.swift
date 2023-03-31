

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var transferPrice: Int

        public var priceMarked: Double

        public var itemSize: String

        public var discount: Double

        public var companyId: Int

        public var modifiedOn: String

        public var hsnCodeId: String

        public var quantity: Int

        public var amountPaid: Double

        public var itemId: Int

        public var fyndStoreId: String

        public var avlQty: Int

        public var identifier: [String: Any]

        public var sellerIdentifier: String

        public var sku: String

        public var affiliateMeta: [String: Any]

        public var id: String

        public var storeId: Int

        public var priceEffective: Double

        public var deliveryCharge: Double

        public var unitPrice: Double

        public var pdfLinks: MarketPlacePdf?

        public var affiliateStoreId: String

        public enum CodingKeys: String, CodingKey {
            case transferPrice = "transfer_price"

            case priceMarked = "price_marked"

            case itemSize = "item_size"

            case discount

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case hsnCodeId = "hsn_code_id"

            case quantity

            case amountPaid = "amount_paid"

            case itemId = "item_id"

            case fyndStoreId = "fynd_store_id"

            case avlQty = "avl_qty"

            case identifier

            case sellerIdentifier = "seller_identifier"

            case sku

            case affiliateMeta = "affiliate_meta"

            case id = "_id"

            case storeId = "store_id"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case unitPrice = "unit_price"

            case pdfLinks = "pdf_links"

            case affiliateStoreId = "affiliate_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.transferPrice = transferPrice

            self.priceMarked = priceMarked

            self.itemSize = itemSize

            self.discount = discount

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.hsnCodeId = hsnCodeId

            self.quantity = quantity

            self.amountPaid = amountPaid

            self.itemId = itemId

            self.fyndStoreId = fyndStoreId

            self.avlQty = avlQty

            self.identifier = identifier

            self.sellerIdentifier = sellerIdentifier

            self.sku = sku

            self.affiliateMeta = affiliateMeta

            self.id = id

            self.storeId = storeId

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.unitPrice = unitPrice

            self.pdfLinks = pdfLinks

            self.affiliateStoreId = affiliateStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            discount = try container.decode(Double.self, forKey: .discount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            id = try container.decode(String.self, forKey: .id)

            storeId = try container.decode(Int.self, forKey: .storeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var transferPrice: Int

        public var priceMarked: Double

        public var itemSize: String

        public var discount: Double

        public var companyId: Int

        public var modifiedOn: String

        public var hsnCodeId: String

        public var quantity: Int

        public var amountPaid: Double

        public var itemId: Int

        public var fyndStoreId: String

        public var avlQty: Int

        public var identifier: [String: Any]

        public var sellerIdentifier: String

        public var sku: String

        public var affiliateMeta: [String: Any]

        public var id: String

        public var storeId: Int

        public var priceEffective: Double

        public var deliveryCharge: Double

        public var unitPrice: Double

        public var pdfLinks: MarketPlacePdf?

        public var affiliateStoreId: String

        public enum CodingKeys: String, CodingKey {
            case transferPrice = "transfer_price"

            case priceMarked = "price_marked"

            case itemSize = "item_size"

            case discount

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case hsnCodeId = "hsn_code_id"

            case quantity

            case amountPaid = "amount_paid"

            case itemId = "item_id"

            case fyndStoreId = "fynd_store_id"

            case avlQty = "avl_qty"

            case identifier

            case sellerIdentifier = "seller_identifier"

            case sku

            case affiliateMeta = "affiliate_meta"

            case id = "_id"

            case storeId = "store_id"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case unitPrice = "unit_price"

            case pdfLinks = "pdf_links"

            case affiliateStoreId = "affiliate_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.transferPrice = transferPrice

            self.priceMarked = priceMarked

            self.itemSize = itemSize

            self.discount = discount

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.hsnCodeId = hsnCodeId

            self.quantity = quantity

            self.amountPaid = amountPaid

            self.itemId = itemId

            self.fyndStoreId = fyndStoreId

            self.avlQty = avlQty

            self.identifier = identifier

            self.sellerIdentifier = sellerIdentifier

            self.sku = sku

            self.affiliateMeta = affiliateMeta

            self.id = id

            self.storeId = storeId

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.unitPrice = unitPrice

            self.pdfLinks = pdfLinks

            self.affiliateStoreId = affiliateStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            discount = try container.decode(Double.self, forKey: .discount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            id = try container.decode(String.self, forKey: .id)

            storeId = try container.decode(Int.self, forKey: .storeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)
        }
    }
}
