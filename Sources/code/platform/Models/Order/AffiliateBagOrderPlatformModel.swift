

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var affiliateStoreId: String

        public var companyId: Int

        public var pdfLinks: MarketPlacePdf?

        public var sellerIdentifier: String

        public var identifier: [String: Any]

        public var id: String

        public var sku: String

        public var itemId: Int

        public var priceEffective: Double

        public var deliveryCharge: Double

        public var discount: Double

        public var fyndStoreId: String

        public var storeId: Int

        public var amountPaid: Double

        public var quantity: Int

        public var itemSize: String

        public var unitPrice: Double

        public var modifiedOn: String

        public var avlQty: Int

        public var hsnCodeId: String

        public var priceMarked: Double

        public var transferPrice: Int

        public var affiliateMeta: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case affiliateStoreId = "affiliate_store_id"

            case companyId = "company_id"

            case pdfLinks = "pdf_links"

            case sellerIdentifier = "seller_identifier"

            case identifier

            case id = "_id"

            case sku

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case discount

            case fyndStoreId = "fynd_store_id"

            case storeId = "store_id"

            case amountPaid = "amount_paid"

            case quantity

            case itemSize = "item_size"

            case unitPrice = "unit_price"

            case modifiedOn = "modified_on"

            case avlQty = "avl_qty"

            case hsnCodeId = "hsn_code_id"

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case affiliateMeta = "affiliate_meta"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.affiliateStoreId = affiliateStoreId

            self.companyId = companyId

            self.pdfLinks = pdfLinks

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier

            self.id = id

            self.sku = sku

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.discount = discount

            self.fyndStoreId = fyndStoreId

            self.storeId = storeId

            self.amountPaid = amountPaid

            self.quantity = quantity

            self.itemSize = itemSize

            self.unitPrice = unitPrice

            self.modifiedOn = modifiedOn

            self.avlQty = avlQty

            self.hsnCodeId = hsnCodeId

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.affiliateMeta = affiliateMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            id = try container.decode(String.self, forKey: .id)

            sku = try container.decode(String.self, forKey: .sku)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            discount = try container.decode(Double.self, forKey: .discount)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            quantity = try container.decode(Int.self, forKey: .quantity)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var affiliateStoreId: String

        public var companyId: Int

        public var pdfLinks: MarketPlacePdf?

        public var sellerIdentifier: String

        public var identifier: [String: Any]

        public var id: String

        public var sku: String

        public var itemId: Int

        public var priceEffective: Double

        public var deliveryCharge: Double

        public var discount: Double

        public var fyndStoreId: String

        public var storeId: Int

        public var amountPaid: Double

        public var quantity: Int

        public var itemSize: String

        public var unitPrice: Double

        public var modifiedOn: String

        public var avlQty: Int

        public var hsnCodeId: String

        public var priceMarked: Double

        public var transferPrice: Int

        public var affiliateMeta: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case affiliateStoreId = "affiliate_store_id"

            case companyId = "company_id"

            case pdfLinks = "pdf_links"

            case sellerIdentifier = "seller_identifier"

            case identifier

            case id = "_id"

            case sku

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case discount

            case fyndStoreId = "fynd_store_id"

            case storeId = "store_id"

            case amountPaid = "amount_paid"

            case quantity

            case itemSize = "item_size"

            case unitPrice = "unit_price"

            case modifiedOn = "modified_on"

            case avlQty = "avl_qty"

            case hsnCodeId = "hsn_code_id"

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case affiliateMeta = "affiliate_meta"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.affiliateStoreId = affiliateStoreId

            self.companyId = companyId

            self.pdfLinks = pdfLinks

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier

            self.id = id

            self.sku = sku

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.discount = discount

            self.fyndStoreId = fyndStoreId

            self.storeId = storeId

            self.amountPaid = amountPaid

            self.quantity = quantity

            self.itemSize = itemSize

            self.unitPrice = unitPrice

            self.modifiedOn = modifiedOn

            self.avlQty = avlQty

            self.hsnCodeId = hsnCodeId

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.affiliateMeta = affiliateMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            id = try container.decode(String.self, forKey: .id)

            sku = try container.decode(String.self, forKey: .sku)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            discount = try container.decode(Double.self, forKey: .discount)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            quantity = try container.decode(Int.self, forKey: .quantity)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)
        }
    }
}
