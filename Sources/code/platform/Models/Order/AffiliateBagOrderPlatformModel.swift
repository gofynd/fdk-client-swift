

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var modifiedOn: String

        public var hsnCodeId: String

        public var avlQty: Int

        public var storeId: Int

        public var deliveryCharge: Double

        public var itemSize: String

        public var fyndStoreId: String

        public var affiliateMeta: [String: Any]

        public var quantity: Int

        public var pdfLinks: MarketPlacePdf?

        public var unitPrice: Double

        public var priceMarked: Double

        public var discount: Double

        public var amountPaid: Double

        public var transferPrice: Int

        public var identifier: [String: Any]

        public var sellerIdentifier: String

        public var companyId: Int

        public var affiliateStoreId: String

        public var itemId: Int

        public var priceEffective: Double

        public var sku: String

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case hsnCodeId = "hsn_code_id"

            case avlQty = "avl_qty"

            case storeId = "store_id"

            case deliveryCharge = "delivery_charge"

            case itemSize = "item_size"

            case fyndStoreId = "fynd_store_id"

            case affiliateMeta = "affiliate_meta"

            case quantity

            case pdfLinks = "pdf_links"

            case unitPrice = "unit_price"

            case priceMarked = "price_marked"

            case discount

            case amountPaid = "amount_paid"

            case transferPrice = "transfer_price"

            case identifier

            case sellerIdentifier = "seller_identifier"

            case companyId = "company_id"

            case affiliateStoreId = "affiliate_store_id"

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case sku

            case id = "_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.modifiedOn = modifiedOn

            self.hsnCodeId = hsnCodeId

            self.avlQty = avlQty

            self.storeId = storeId

            self.deliveryCharge = deliveryCharge

            self.itemSize = itemSize

            self.fyndStoreId = fyndStoreId

            self.affiliateMeta = affiliateMeta

            self.quantity = quantity

            self.pdfLinks = pdfLinks

            self.unitPrice = unitPrice

            self.priceMarked = priceMarked

            self.discount = discount

            self.amountPaid = amountPaid

            self.transferPrice = transferPrice

            self.identifier = identifier

            self.sellerIdentifier = sellerIdentifier

            self.companyId = companyId

            self.affiliateStoreId = affiliateStoreId

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.sku = sku

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            storeId = try container.decode(Int.self, forKey: .storeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            discount = try container.decode(Double.self, forKey: .discount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sku = try container.decode(String.self, forKey: .sku)

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sku, forKey: .sku)

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

        public var hsnCodeId: String

        public var avlQty: Int

        public var storeId: Int

        public var deliveryCharge: Double

        public var itemSize: String

        public var fyndStoreId: String

        public var affiliateMeta: [String: Any]

        public var quantity: Int

        public var pdfLinks: MarketPlacePdf?

        public var unitPrice: Double

        public var priceMarked: Double

        public var discount: Double

        public var amountPaid: Double

        public var transferPrice: Int

        public var identifier: [String: Any]

        public var sellerIdentifier: String

        public var companyId: Int

        public var affiliateStoreId: String

        public var itemId: Int

        public var priceEffective: Double

        public var sku: String

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case hsnCodeId = "hsn_code_id"

            case avlQty = "avl_qty"

            case storeId = "store_id"

            case deliveryCharge = "delivery_charge"

            case itemSize = "item_size"

            case fyndStoreId = "fynd_store_id"

            case affiliateMeta = "affiliate_meta"

            case quantity

            case pdfLinks = "pdf_links"

            case unitPrice = "unit_price"

            case priceMarked = "price_marked"

            case discount

            case amountPaid = "amount_paid"

            case transferPrice = "transfer_price"

            case identifier

            case sellerIdentifier = "seller_identifier"

            case companyId = "company_id"

            case affiliateStoreId = "affiliate_store_id"

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case sku

            case id = "_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.modifiedOn = modifiedOn

            self.hsnCodeId = hsnCodeId

            self.avlQty = avlQty

            self.storeId = storeId

            self.deliveryCharge = deliveryCharge

            self.itemSize = itemSize

            self.fyndStoreId = fyndStoreId

            self.affiliateMeta = affiliateMeta

            self.quantity = quantity

            self.pdfLinks = pdfLinks

            self.unitPrice = unitPrice

            self.priceMarked = priceMarked

            self.discount = discount

            self.amountPaid = amountPaid

            self.transferPrice = transferPrice

            self.identifier = identifier

            self.sellerIdentifier = sellerIdentifier

            self.companyId = companyId

            self.affiliateStoreId = affiliateStoreId

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.sku = sku

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            storeId = try container.decode(Int.self, forKey: .storeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            discount = try container.decode(Double.self, forKey: .discount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sku = try container.decode(String.self, forKey: .sku)

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
