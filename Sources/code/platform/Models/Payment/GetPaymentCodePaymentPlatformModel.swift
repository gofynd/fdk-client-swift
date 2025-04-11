

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: GetPaymentCode
        Used By: Payment
    */

    class GetPaymentCode: Codable {
        
        
        public var cod: PaymentCode?
        
        public var nb: PaymentCode?
        
        public var wl: PaymentCode?
        
        public var card: PaymentCode?
        
        public var pl: PaymentCode?
        
        public var ps: PaymentCode?
        
        public var op: PaymentCode?
        
        public var upi: PaymentCode?
        
        public var qr: PaymentCode?
        
        public var fc: PaymentCode?
        
        public var pac: PaymentCode?
        
        public var stripepg: PaymentCode?
        
        public var payumoneypg: PaymentCode?
        
        public var rupifipg: PaymentCode?
        
        public var cas: PaymentCode?
        
        public var csas: PaymentCode?
        
        public var ccavenuepg: PaymentCode?
        
        public var cardlessEmi: PaymentCode?
        
        public var cashback: PaymentCode?
        
        public var loyalty: PaymentCode?
        
        public var employeeDiscount: PaymentCode?
        
        public var paymentlink: PaymentCode?
        
        public var epaylater: PaymentCode?
        
        public var udhaari: PaymentCode?
        
        public var creditnote: PaymentCode?
        
        public var checkout: PaymentCode?
        
        public var rone: PaymentCode?
        
        public var emi: PaymentCode?
        
        public var sodexo: PaymentCode?
        
        public var jmWallet: PaymentCode?
        

        public enum CodingKeys: String, CodingKey {
            
            case cod = "cod"
            
            case nb = "nb"
            
            case wl = "wl"
            
            case card = "card"
            
            case pl = "pl"
            
            case ps = "ps"
            
            case op = "op"
            
            case upi = "upi"
            
            case qr = "qr"
            
            case fc = "fc"
            
            case pac = "pac"
            
            case stripepg = "stripepg"
            
            case payumoneypg = "payumoneypg"
            
            case rupifipg = "rupifipg"
            
            case cas = "cas"
            
            case csas = "csas"
            
            case ccavenuepg = "ccavenuepg"
            
            case cardlessEmi = "cardless_emi"
            
            case cashback = "cashback"
            
            case loyalty = "loyalty"
            
            case employeeDiscount = "employee_discount"
            
            case paymentlink = "paymentlink"
            
            case epaylater = "epaylater"
            
            case udhaari = "udhaari"
            
            case creditnote = "creditnote"
            
            case checkout = "checkout"
            
            case rone = "rone"
            
            case emi = "emi"
            
            case sodexo = "sodexo"
            
            case jmWallet = "jm_wallet"
            
        }

        public init(card: PaymentCode? = nil, cardlessEmi: PaymentCode? = nil, cas: PaymentCode? = nil, cashback: PaymentCode? = nil, ccavenuepg: PaymentCode? = nil, checkout: PaymentCode? = nil, cod: PaymentCode? = nil, creditnote: PaymentCode? = nil, csas: PaymentCode? = nil, emi: PaymentCode? = nil, employeeDiscount: PaymentCode? = nil, epaylater: PaymentCode? = nil, fc: PaymentCode? = nil, jmWallet: PaymentCode? = nil, loyalty: PaymentCode? = nil, nb: PaymentCode? = nil, op: PaymentCode? = nil, pac: PaymentCode? = nil, paymentlink: PaymentCode? = nil, payumoneypg: PaymentCode? = nil, pl: PaymentCode? = nil, ps: PaymentCode? = nil, qr: PaymentCode? = nil, rone: PaymentCode? = nil, rupifipg: PaymentCode? = nil, sodexo: PaymentCode? = nil, stripepg: PaymentCode? = nil, udhaari: PaymentCode? = nil, upi: PaymentCode? = nil, wl: PaymentCode? = nil) {
            
            self.cod = cod
            
            self.nb = nb
            
            self.wl = wl
            
            self.card = card
            
            self.pl = pl
            
            self.ps = ps
            
            self.op = op
            
            self.upi = upi
            
            self.qr = qr
            
            self.fc = fc
            
            self.pac = pac
            
            self.stripepg = stripepg
            
            self.payumoneypg = payumoneypg
            
            self.rupifipg = rupifipg
            
            self.cas = cas
            
            self.csas = csas
            
            self.ccavenuepg = ccavenuepg
            
            self.cardlessEmi = cardlessEmi
            
            self.cashback = cashback
            
            self.loyalty = loyalty
            
            self.employeeDiscount = employeeDiscount
            
            self.paymentlink = paymentlink
            
            self.epaylater = epaylater
            
            self.udhaari = udhaari
            
            self.creditnote = creditnote
            
            self.checkout = checkout
            
            self.rone = rone
            
            self.emi = emi
            
            self.sodexo = sodexo
            
            self.jmWallet = jmWallet
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cod = try container.decode(PaymentCode.self, forKey: .cod)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    nb = try container.decode(PaymentCode.self, forKey: .nb)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    wl = try container.decode(PaymentCode.self, forKey: .wl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    card = try container.decode(PaymentCode.self, forKey: .card)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pl = try container.decode(PaymentCode.self, forKey: .pl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ps = try container.decode(PaymentCode.self, forKey: .ps)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    op = try container.decode(PaymentCode.self, forKey: .op)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    upi = try container.decode(PaymentCode.self, forKey: .upi)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    qr = try container.decode(PaymentCode.self, forKey: .qr)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fc = try container.decode(PaymentCode.self, forKey: .fc)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pac = try container.decode(PaymentCode.self, forKey: .pac)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stripepg = try container.decode(PaymentCode.self, forKey: .stripepg)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payumoneypg = try container.decode(PaymentCode.self, forKey: .payumoneypg)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rupifipg = try container.decode(PaymentCode.self, forKey: .rupifipg)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cas = try container.decode(PaymentCode.self, forKey: .cas)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    csas = try container.decode(PaymentCode.self, forKey: .csas)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ccavenuepg = try container.decode(PaymentCode.self, forKey: .ccavenuepg)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cardlessEmi = try container.decode(PaymentCode.self, forKey: .cardlessEmi)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cashback = try container.decode(PaymentCode.self, forKey: .cashback)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    loyalty = try container.decode(PaymentCode.self, forKey: .loyalty)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    employeeDiscount = try container.decode(PaymentCode.self, forKey: .employeeDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentlink = try container.decode(PaymentCode.self, forKey: .paymentlink)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    epaylater = try container.decode(PaymentCode.self, forKey: .epaylater)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    udhaari = try container.decode(PaymentCode.self, forKey: .udhaari)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    creditnote = try container.decode(PaymentCode.self, forKey: .creditnote)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    checkout = try container.decode(PaymentCode.self, forKey: .checkout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rone = try container.decode(PaymentCode.self, forKey: .rone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    emi = try container.decode(PaymentCode.self, forKey: .emi)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sodexo = try container.decode(PaymentCode.self, forKey: .sodexo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    jmWallet = try container.decode(PaymentCode.self, forKey: .jmWallet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cod, forKey: .cod)
            
            
            
            
            try? container.encodeIfPresent(nb, forKey: .nb)
            
            
            
            
            try? container.encodeIfPresent(wl, forKey: .wl)
            
            
            
            
            try? container.encodeIfPresent(card, forKey: .card)
            
            
            
            
            try? container.encodeIfPresent(pl, forKey: .pl)
            
            
            
            
            try? container.encodeIfPresent(ps, forKey: .ps)
            
            
            
            
            try? container.encodeIfPresent(op, forKey: .op)
            
            
            
            
            try? container.encodeIfPresent(upi, forKey: .upi)
            
            
            
            
            try? container.encodeIfPresent(qr, forKey: .qr)
            
            
            
            
            try? container.encodeIfPresent(fc, forKey: .fc)
            
            
            
            
            try? container.encodeIfPresent(pac, forKey: .pac)
            
            
            
            
            try? container.encodeIfPresent(stripepg, forKey: .stripepg)
            
            
            
            
            try? container.encodeIfPresent(payumoneypg, forKey: .payumoneypg)
            
            
            
            
            try? container.encodeIfPresent(rupifipg, forKey: .rupifipg)
            
            
            
            
            try? container.encodeIfPresent(cas, forKey: .cas)
            
            
            
            
            try? container.encodeIfPresent(csas, forKey: .csas)
            
            
            
            
            try? container.encodeIfPresent(ccavenuepg, forKey: .ccavenuepg)
            
            
            
            
            try? container.encodeIfPresent(cardlessEmi, forKey: .cardlessEmi)
            
            
            
            
            try? container.encodeIfPresent(cashback, forKey: .cashback)
            
            
            
            
            try? container.encodeIfPresent(loyalty, forKey: .loyalty)
            
            
            
            
            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)
            
            
            
            
            try? container.encodeIfPresent(paymentlink, forKey: .paymentlink)
            
            
            
            
            try? container.encodeIfPresent(epaylater, forKey: .epaylater)
            
            
            
            
            try? container.encodeIfPresent(udhaari, forKey: .udhaari)
            
            
            
            
            try? container.encodeIfPresent(creditnote, forKey: .creditnote)
            
            
            
            
            try? container.encodeIfPresent(checkout, forKey: .checkout)
            
            
            
            
            try? container.encodeIfPresent(rone, forKey: .rone)
            
            
            
            
            try? container.encodeIfPresent(emi, forKey: .emi)
            
            
            
            
            try? container.encodeIfPresent(sodexo, forKey: .sodexo)
            
            
            
            
            try? container.encodeIfPresent(jmWallet, forKey: .jmWallet)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: GetPaymentCode
        Used By: Payment
    */

    class GetPaymentCode: Codable {
        
        
        public var cod: PaymentCode?
        
        public var nb: PaymentCode?
        
        public var wl: PaymentCode?
        
        public var card: PaymentCode?
        
        public var pl: PaymentCode?
        
        public var ps: PaymentCode?
        
        public var op: PaymentCode?
        
        public var upi: PaymentCode?
        
        public var qr: PaymentCode?
        
        public var fc: PaymentCode?
        
        public var pac: PaymentCode?
        
        public var stripepg: PaymentCode?
        
        public var payumoneypg: PaymentCode?
        
        public var rupifipg: PaymentCode?
        
        public var cas: PaymentCode?
        
        public var csas: PaymentCode?
        
        public var ccavenuepg: PaymentCode?
        
        public var cardlessEmi: PaymentCode?
        
        public var cashback: PaymentCode?
        
        public var loyalty: PaymentCode?
        
        public var employeeDiscount: PaymentCode?
        
        public var paymentlink: PaymentCode?
        
        public var epaylater: PaymentCode?
        
        public var udhaari: PaymentCode?
        
        public var creditnote: PaymentCode?
        
        public var checkout: PaymentCode?
        
        public var rone: PaymentCode?
        
        public var emi: PaymentCode?
        
        public var sodexo: PaymentCode?
        
        public var jmWallet: PaymentCode?
        

        public enum CodingKeys: String, CodingKey {
            
            case cod = "cod"
            
            case nb = "nb"
            
            case wl = "wl"
            
            case card = "card"
            
            case pl = "pl"
            
            case ps = "ps"
            
            case op = "op"
            
            case upi = "upi"
            
            case qr = "qr"
            
            case fc = "fc"
            
            case pac = "pac"
            
            case stripepg = "stripepg"
            
            case payumoneypg = "payumoneypg"
            
            case rupifipg = "rupifipg"
            
            case cas = "cas"
            
            case csas = "csas"
            
            case ccavenuepg = "ccavenuepg"
            
            case cardlessEmi = "cardless_emi"
            
            case cashback = "cashback"
            
            case loyalty = "loyalty"
            
            case employeeDiscount = "employee_discount"
            
            case paymentlink = "paymentlink"
            
            case epaylater = "epaylater"
            
            case udhaari = "udhaari"
            
            case creditnote = "creditnote"
            
            case checkout = "checkout"
            
            case rone = "rone"
            
            case emi = "emi"
            
            case sodexo = "sodexo"
            
            case jmWallet = "jm_wallet"
            
        }

        public init(card: PaymentCode? = nil, cardlessEmi: PaymentCode? = nil, cas: PaymentCode? = nil, cashback: PaymentCode? = nil, ccavenuepg: PaymentCode? = nil, checkout: PaymentCode? = nil, cod: PaymentCode? = nil, creditnote: PaymentCode? = nil, csas: PaymentCode? = nil, emi: PaymentCode? = nil, employeeDiscount: PaymentCode? = nil, epaylater: PaymentCode? = nil, fc: PaymentCode? = nil, jmWallet: PaymentCode? = nil, loyalty: PaymentCode? = nil, nb: PaymentCode? = nil, op: PaymentCode? = nil, pac: PaymentCode? = nil, paymentlink: PaymentCode? = nil, payumoneypg: PaymentCode? = nil, pl: PaymentCode? = nil, ps: PaymentCode? = nil, qr: PaymentCode? = nil, rone: PaymentCode? = nil, rupifipg: PaymentCode? = nil, sodexo: PaymentCode? = nil, stripepg: PaymentCode? = nil, udhaari: PaymentCode? = nil, upi: PaymentCode? = nil, wl: PaymentCode? = nil) {
            
            self.cod = cod
            
            self.nb = nb
            
            self.wl = wl
            
            self.card = card
            
            self.pl = pl
            
            self.ps = ps
            
            self.op = op
            
            self.upi = upi
            
            self.qr = qr
            
            self.fc = fc
            
            self.pac = pac
            
            self.stripepg = stripepg
            
            self.payumoneypg = payumoneypg
            
            self.rupifipg = rupifipg
            
            self.cas = cas
            
            self.csas = csas
            
            self.ccavenuepg = ccavenuepg
            
            self.cardlessEmi = cardlessEmi
            
            self.cashback = cashback
            
            self.loyalty = loyalty
            
            self.employeeDiscount = employeeDiscount
            
            self.paymentlink = paymentlink
            
            self.epaylater = epaylater
            
            self.udhaari = udhaari
            
            self.creditnote = creditnote
            
            self.checkout = checkout
            
            self.rone = rone
            
            self.emi = emi
            
            self.sodexo = sodexo
            
            self.jmWallet = jmWallet
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cod = try container.decode(PaymentCode.self, forKey: .cod)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    nb = try container.decode(PaymentCode.self, forKey: .nb)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    wl = try container.decode(PaymentCode.self, forKey: .wl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    card = try container.decode(PaymentCode.self, forKey: .card)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pl = try container.decode(PaymentCode.self, forKey: .pl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ps = try container.decode(PaymentCode.self, forKey: .ps)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    op = try container.decode(PaymentCode.self, forKey: .op)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    upi = try container.decode(PaymentCode.self, forKey: .upi)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    qr = try container.decode(PaymentCode.self, forKey: .qr)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fc = try container.decode(PaymentCode.self, forKey: .fc)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pac = try container.decode(PaymentCode.self, forKey: .pac)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stripepg = try container.decode(PaymentCode.self, forKey: .stripepg)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payumoneypg = try container.decode(PaymentCode.self, forKey: .payumoneypg)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rupifipg = try container.decode(PaymentCode.self, forKey: .rupifipg)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cas = try container.decode(PaymentCode.self, forKey: .cas)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    csas = try container.decode(PaymentCode.self, forKey: .csas)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ccavenuepg = try container.decode(PaymentCode.self, forKey: .ccavenuepg)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cardlessEmi = try container.decode(PaymentCode.self, forKey: .cardlessEmi)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cashback = try container.decode(PaymentCode.self, forKey: .cashback)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    loyalty = try container.decode(PaymentCode.self, forKey: .loyalty)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    employeeDiscount = try container.decode(PaymentCode.self, forKey: .employeeDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentlink = try container.decode(PaymentCode.self, forKey: .paymentlink)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    epaylater = try container.decode(PaymentCode.self, forKey: .epaylater)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    udhaari = try container.decode(PaymentCode.self, forKey: .udhaari)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    creditnote = try container.decode(PaymentCode.self, forKey: .creditnote)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    checkout = try container.decode(PaymentCode.self, forKey: .checkout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rone = try container.decode(PaymentCode.self, forKey: .rone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    emi = try container.decode(PaymentCode.self, forKey: .emi)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sodexo = try container.decode(PaymentCode.self, forKey: .sodexo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    jmWallet = try container.decode(PaymentCode.self, forKey: .jmWallet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cod, forKey: .cod)
            
            
            
            
            try? container.encodeIfPresent(nb, forKey: .nb)
            
            
            
            
            try? container.encodeIfPresent(wl, forKey: .wl)
            
            
            
            
            try? container.encodeIfPresent(card, forKey: .card)
            
            
            
            
            try? container.encodeIfPresent(pl, forKey: .pl)
            
            
            
            
            try? container.encodeIfPresent(ps, forKey: .ps)
            
            
            
            
            try? container.encodeIfPresent(op, forKey: .op)
            
            
            
            
            try? container.encodeIfPresent(upi, forKey: .upi)
            
            
            
            
            try? container.encodeIfPresent(qr, forKey: .qr)
            
            
            
            
            try? container.encodeIfPresent(fc, forKey: .fc)
            
            
            
            
            try? container.encodeIfPresent(pac, forKey: .pac)
            
            
            
            
            try? container.encodeIfPresent(stripepg, forKey: .stripepg)
            
            
            
            
            try? container.encodeIfPresent(payumoneypg, forKey: .payumoneypg)
            
            
            
            
            try? container.encodeIfPresent(rupifipg, forKey: .rupifipg)
            
            
            
            
            try? container.encodeIfPresent(cas, forKey: .cas)
            
            
            
            
            try? container.encodeIfPresent(csas, forKey: .csas)
            
            
            
            
            try? container.encodeIfPresent(ccavenuepg, forKey: .ccavenuepg)
            
            
            
            
            try? container.encodeIfPresent(cardlessEmi, forKey: .cardlessEmi)
            
            
            
            
            try? container.encodeIfPresent(cashback, forKey: .cashback)
            
            
            
            
            try? container.encodeIfPresent(loyalty, forKey: .loyalty)
            
            
            
            
            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)
            
            
            
            
            try? container.encodeIfPresent(paymentlink, forKey: .paymentlink)
            
            
            
            
            try? container.encodeIfPresent(epaylater, forKey: .epaylater)
            
            
            
            
            try? container.encodeIfPresent(udhaari, forKey: .udhaari)
            
            
            
            
            try? container.encodeIfPresent(creditnote, forKey: .creditnote)
            
            
            
            
            try? container.encodeIfPresent(checkout, forKey: .checkout)
            
            
            
            
            try? container.encodeIfPresent(rone, forKey: .rone)
            
            
            
            
            try? container.encodeIfPresent(emi, forKey: .emi)
            
            
            
            
            try? container.encodeIfPresent(sodexo, forKey: .sodexo)
            
            
            
            
            try? container.encodeIfPresent(jmWallet, forKey: .jmWallet)
            
            
        }
        
    }
}


