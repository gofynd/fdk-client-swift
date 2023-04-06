

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var modifiedOn: String

        public var deliveryCharge: Double

        public var amountPaid: Double

        public var companyId: Int

        public var fyndStoreId: String

        public var unitPrice: Double

        public var priceEffective: Double

        public var transferPrice: Int

        public var quantity: Int

        public var affiliateMeta: [String: Any]

        public var avlQty: Int

        public var storeId: Int

        public var identifier: [String: Any]

        public var affiliateStoreId: String

        public var priceMarked: Double

        public var itemSize: String

        public var sku: String

        public var itemId: Int

        public var hsnCodeId: String

        public var discount: Double

        public var pdfLinks: MarketPlacePdf?

        public var sellerIdentifier: String

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case companyId = "company_id"

            case fyndStoreId = "fynd_store_id"

            case unitPrice = "unit_price"

            case priceEffective = "price_effective"

            case transferPrice = "transfer_price"

            case quantity

            case affiliateMeta = "affiliate_meta"

            case avlQty = "avl_qty"

            case storeId = "store_id"

            case identifier

            case affiliateStoreId = "affiliate_store_id"

            case priceMarked = "price_marked"

            case itemSize = "item_size"

            case sku

            case itemId = "item_id"

            case hsnCodeId = "hsn_code_id"

            case discount

            case pdfLinks = "pdf_links"

            case sellerIdentifier = "seller_identifier"

            case id = "_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.modifiedOn = modifiedOn

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.companyId = companyId

            self.fyndStoreId = fyndStoreId

            self.unitPrice = unitPrice

            self.priceEffective = priceEffective

            self.transferPrice = transferPrice

            self.quantity = quantity

            self.affiliateMeta = affiliateMeta

            self.avlQty = avlQty

            self.storeId = storeId

            self.identifier = identifier

            self.affiliateStoreId = affiliateStoreId

            self.priceMarked = priceMarked

            self.itemSize = itemSize

            self.sku = sku

            self.itemId = itemId

            self.hsnCodeId = hsnCodeId

            self.discount = discount

            self.pdfLinks = pdfLinks

            self.sellerIdentifier = sellerIdentifier

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            companyId = try container.decode(Int.self, forKey: .companyId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            storeId = try container.decode(Int.self, forKey: .storeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            sku = try container.decode(String.self, forKey: .sku)

            itemId = try container.decode(Int.self, forKey: .itemId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var modifiedOn: String

        public var deliveryCharge: Double

        public var amountPaid: Double

        public var companyId: Int

        public var fyndStoreId: String

        public var unitPrice: Double

        public var priceEffective: Double

        public var transferPrice: Int

        public var quantity: Int

        public var affiliateMeta: [String: Any]

        public var avlQty: Int

        public var storeId: Int

        public var identifier: [String: Any]

        public var affiliateStoreId: String

        public var priceMarked: Double

        public var itemSize: String

        public var sku: String

        public var itemId: Int

        public var hsnCodeId: String

        public var discount: Double

        public var pdfLinks: MarketPlacePdf?

        public var sellerIdentifier: String

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case companyId = "company_id"

            case fyndStoreId = "fynd_store_id"

            case unitPrice = "unit_price"

            case priceEffective = "price_effective"

            case transferPrice = "transfer_price"

            case quantity

            case affiliateMeta = "affiliate_meta"

            case avlQty = "avl_qty"

            case storeId = "store_id"

            case identifier

            case affiliateStoreId = "affiliate_store_id"

            case priceMarked = "price_marked"

            case itemSize = "item_size"

            case sku

            case itemId = "item_id"

            case hsnCodeId = "hsn_code_id"

            case discount

            case pdfLinks = "pdf_links"

            case sellerIdentifier = "seller_identifier"

            case id = "_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.modifiedOn = modifiedOn

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.companyId = companyId

            self.fyndStoreId = fyndStoreId

            self.unitPrice = unitPrice

            self.priceEffective = priceEffective

            self.transferPrice = transferPrice

            self.quantity = quantity

            self.affiliateMeta = affiliateMeta

            self.avlQty = avlQty

            self.storeId = storeId

            self.identifier = identifier

            self.affiliateStoreId = affiliateStoreId

            self.priceMarked = priceMarked

            self.itemSize = itemSize

            self.sku = sku

            self.itemId = itemId

            self.hsnCodeId = hsnCodeId

            self.discount = discount

            self.pdfLinks = pdfLinks

            self.sellerIdentifier = sellerIdentifier

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            companyId = try container.decode(Int.self, forKey: .companyId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            storeId = try container.decode(Int.self, forKey: .storeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            sku = try container.decode(String.self, forKey: .sku)

            itemId = try container.decode(Int.self, forKey: .itemId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
